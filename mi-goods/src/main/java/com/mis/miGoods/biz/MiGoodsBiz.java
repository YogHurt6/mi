package com.mis.miGoods.biz;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mis.bean.Goodsinfo;

import java.util.List;

public interface MiGoodsBiz {
    public List<Goodsinfo> findAllGoods();

    public Goodsinfo findById(String fid);

    public Page<Goodsinfo> findByPage(int pageno, int pagesize, String sortby, String sort);

    public Goodsinfo findByTno(String tno);
}
