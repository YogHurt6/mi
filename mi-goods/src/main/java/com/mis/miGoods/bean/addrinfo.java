package com.mis.miGoods.bean;


/**
 * @program: xiaomi
 * @description:
 * @author: HUIiii
 * @create: 2022-11-20 11:15
 **/

public class addrinfo {

    private Integer mno;
    private String name;
    private String tel;
    private String province;
    private String city;
    private String area;
    private String addr;

    public Integer getMno() {
        return mno;
    }

    public void setMno(Integer mno) {
        this.mno = mno;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }
}
