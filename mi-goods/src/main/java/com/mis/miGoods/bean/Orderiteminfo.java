package com.mis.miGoods.bean;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Orderiteminfo {
    @TableId(type = IdType.AUTO)
    private Integer ino;

    private String ono;
    private Integer gno;
    private Integer nums;
    private String price;
    private Integer status;
}
