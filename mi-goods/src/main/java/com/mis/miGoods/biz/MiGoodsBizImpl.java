package com.mis.miGoods.biz;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mis.miGoods.bean.Goodsinfo;
import com.mis.miGoods.dao.MiGoodsDao;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(propagation = Propagation.SUPPORTS,
        isolation = Isolation.DEFAULT, timeout = 2000,
        readOnly = true, rollbackFor = RuntimeException.class
)
@Slf4j
public class MiGoodsBizImpl implements MiGoodsBiz {
    @Autowired
    private MiGoodsDao miGoodsDao;

    @Override
    public List<Goodsinfo> findAllGoods() {
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.orderByDesc("gno");
        return this.miGoodsDao.selectList(wrapper);
    }

    @Override
    public Goodsinfo findById(String gno) {
        return this.miGoodsDao.selectById(gno);
    }

    @Override
    public Page<Goodsinfo> findByPage(int pageno, int pagesize, String sortby, String sort) {
        QueryWrapper wrapper = new QueryWrapper();
        if ("asc".equalsIgnoreCase(sort)) {
            wrapper.orderByAsc(sortby);
        } else {
            wrapper.orderByDesc(sortby);
        }
        Page<Goodsinfo> page = new Page<>(pageno, pagesize);
        //执行分页查询
        Page<Goodsinfo> miPage = this.miGoodsDao.selectPage(page, wrapper);
        log.info("总记录数=" + miPage.getTotal());
        log.info("总页数=" + miPage.getPages());
        log.info("当前页码=" + miPage.getCurrent());
        return miPage;
    }

}
