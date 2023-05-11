package com.mis.miGoods.bean;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @program: mistore
 * @description: 订单信息
 * @author: 作者
 * @create: 2022-11-13 14:57
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Orderinfo implements Serializable {
        @TableId(type = IdType.AUTO)
        private Double id;

        private String ono;
        private String odate;
        private String gname;
        private String name;
        private String tel;
        private String province;
        private String city;
        private String area;
        private String addr;
        private String nums;
        private String price;
        private String status;

        private String month;
        private  String value;

    public Double getId() {
        int i = Integer.parseInt(String.valueOf(id));
        i=Math.round(i);
        id= Double.parseDouble(String.valueOf(i));
        return id;
    }
}
