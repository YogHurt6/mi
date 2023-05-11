package com.mis.miGoods.bean;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @program: mistore
 * @description:
 * @author: 作者
 * @create: 2022-11-12 08:36
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Goodsinfo implements Serializable {
    @TableId(type = IdType.AUTO)
    private String gno;

    private String gname;
    private String tno;
    private String price;
    private String intro;
    private String balance;
    private String pics;
    private String qperied;
    private String descr;
    private Integer status;

}
