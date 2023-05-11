package com.mis.miOrder.controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.mis.miGoods.bean.Goodsinfo;
import com.mis.miOrder.model.CartItem;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@RestController
@Slf4j
@RequestMapping("cart")
public class MiAddCarController {

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;
    @Autowired
    private RestTemplate restTemplate;

    @RequestMapping("addCart")
    public Map<String, Object> addCart(@RequestParam String gno,
                                       @RequestParam String mno,
                                       @RequestParam Integer num) {
        Map<String, Object> result = new HashMap<>();
        Goodsinfo goodsinfo = null;

        String url = "http://localhost:8802/miGoods/findById/" + gno;
        Map<String, Object> resultMap = this.restTemplate.getForObject(url, Map.class);
        if ("1".equalsIgnoreCase(resultMap.get("code").toString())) {
            Map m = (Map) resultMap.get("msg");
            //如何将一个Map转为  一个  Resfood对象  -> 反射.
            // spring的底层对json的处理使用 jackson框架，这个框架有将map转为对象的方法
            ObjectMapper mapper = new ObjectMapper();
            goodsinfo = mapper.convertValue(m, Goodsinfo.class);
        } else {
            result.put("code", 0);
            result.put("msg", "查无此商品" + gno);
            return result;   //  200
        }
        CartItem ci = (CartItem) this.redisTemplate.opsForHash().get("cart_"+mno, gno + "");
        //加购物车的逻辑
        //CartItem ci= (CartItem) this.redisTemplate.opsForHash().get("cart_"+sessionid,  fid+""  );

        if (ci == null) {
            ci = new CartItem();
            ci.setGoodsinfo(goodsinfo);
            ci.setNum(num);
        } else {
            int newNum = ci.getNum() + num;
            ci.setNum(newNum);
        }
        //计算金额
        if (ci.getNum() <= 0) {
            this.redisTemplate.opsForHash().delete("cart_"+mno, gno + "");
        } else {
            ci.getSmallCount();
            this.redisTemplate.opsForHash().put("cart_"+mno, gno + "", ci);
        }
        result.put("code", 1);

        Map m = redisTemplate.opsForHash().entries("cart_"+mno);
        result.put("data", m.values());
        return result;
    }

    @RequestMapping("clearAll")
    public Map<String, Object> clearAll(@RequestParam String mno) {
        Map<String, Object> result = new HashMap<>();
        if (this.redisTemplate.hasKey("cart_"+mno)) {
            Set<Object> keys = this.redisTemplate.opsForHash().keys("cart_"+mno);
            this.redisTemplate.opsForHash().delete("cart_"+mno, keys.toArray());
            result.put("code", 1);
            result.put("obj", keys);   //keys中存的是 删除的商品编号
        } else {
            result.put("code", 0);
        }
        return result;
    }

    @RequestMapping("getCartInfo")
    public Map<String, Object> getCartInfo(@RequestParam String mno) {
        Map<String, Object> result = new HashMap<>();
        if (this.redisTemplate.hasKey("cart_"+mno)) {
            Map<Object, Object> cart = this.redisTemplate.opsForHash().entries("cart_"+mno);
            log.info("sessionid为" + ",的购物车为:" + cart);
            result.put("code", 1);
            result.put("data", cart.values());   //keys中存的是 删除的商品编号
        } else {
            result.put("code", 0);
            log.info("购物车是空的...");
        }
        return result;
    }
}

