package com.mis.miGoods.controllers;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mis.bean.Goodsinfo;
import com.mis.miGoods.biz.MiGoodsBiz;
import com.mis.miGoods.web.model.PageBean;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@Slf4j
@RestController
@RequestMapping(value = "miGoods")
public class MiGoodsController {

    @Autowired
    private MiGoodsBiz miGoodsBiz;

    @RequestMapping("findById/{gno}")
    public Map<String, Object> findById(@PathVariable String gno) {
        Map<String, Object> map = new HashMap<>();
        Goodsinfo m = null;
        try {
            m = this.miGoodsBiz.findById(gno);
        } catch (Exception e) {
            map.put("code", 0);
            map.put("msg", e.getCause());
            return map;
        }
        map.put("code", 1);
        map.put("data", m);
        return map;
    }

    @RequestMapping("findByTno")
    public Map<String, Object> findByTno(@RequestParam String tno) {
        Map<String, Object> map = new HashMap<>();
        Goodsinfo m = null;
        try {
            m = this.miGoodsBiz.findByTno(tno);
        } catch (Exception e) {
            map.put("code", 0);
            map.put("msg", "出错了");
            return map;
        }
        map.put("code", 1);
        map.put("data", m);
        return map;
    }

    public Set<Thread> set = new HashSet<>();

    @RequestMapping(value = "findAll")
    public Map<String, Object> findAll() {
        Map<String, Object> map = new HashMap<>();
        List<Goodsinfo> list = null;
        try {
            list = this.miGoodsBiz.findAllGoods();
        } catch (Exception ex) {
            map.put("code", 0);
            map.put("msg", ex.getCause());
            return map;
        }
        map.put("code", 1);
        map.put("obj", list);
        return map;
    }

    @RequestMapping("findByPage")
    //@SentinelResource(value = "hotkey-page", blockHandler = "handleBlock")//流控资源名
    public Map<String, Object> findByPage(@RequestParam int pageno, @RequestParam int pagesize, @RequestParam String sortby, @RequestParam String sort) {
        Map<String, Object> map = new HashMap<>();
        Page<Goodsinfo> page = null;
        try {
            page = this.miGoodsBiz.findByPage(pageno, pagesize, sortby, sort);
        } catch (Exception ex) {
            map.put("code", 0);
            map.put("msg", ex.getCause());
            return map;
        }
        map.put("code", 1);

        PageBean pageBean = new PageBean();
        pageBean.setPageno(pageno);
        pageBean.setSort(sort);
        pageBean.setSortby(sortby);
        pageBean.setTotal(page.getTotal());
        pageBean.setDataset(page.getRecords());

        // 其它的分页数据
        //计算总页数
        long totalPages = page.getTotal() % pageBean.getPagesize() == 0 ? page.getTotal() / pageBean.getPagesize() : page.getTotal() / pageBean.getPagesize() + 1;
        pageBean.setTotalpages((int) totalPages);
        //上一页页号的计算
        if (pageBean.getPageno() <= 1) {
            pageBean.setPre(1);
        } else {
            pageBean.setPre(pageBean.getPageno() - 1);
        }
        //下一页的页号
        if (pageBean.getPageno() == totalPages) {
            pageBean.setNext((int) totalPages);
        } else {
            pageBean.setNext(pageBean.getPageno() + 1);
        }

        map.put("data", pageBean);
        return map;
    }


}
