package com.mis.miGoods.bean;

import java.io.Serializable;

/**
 * @program: mistore
 * @description:
 * @author: 作者
 * @create: 2022-11-14 20:26
 */
public class GoodsType implements Serializable {
    private Integer tno;
    private String tname;
    private Integer status;

    public Integer getTno() {
        return tno;
    }

    public void setTno(Integer tno) {
        this.tno = tno;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
