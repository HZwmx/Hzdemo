package com.hz.domain;

import java.io.Serializable;

public class Order implements Serializable {

    private Integer orderid;
    private Integer uid;
    private Integer shopid;
    private String shopname;
    private String shopmoney;
    private String username;
    private String shopstock;
    private String shopPicname;
    private Integer ifdeal;

    public Integer getIfdeal() {
        return ifdeal;
    }

    public void setIfdeal(Integer ifdeal) {
        this.ifdeal = ifdeal;
    }

    public String getShopPicname() {
        return shopPicname;
    }

    public void setShopPicname(String shopPicname) {
        this.shopPicname = shopPicname;
    }

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getShopid() {
        return shopid;
    }

    public void setShopid(Integer shopid) {
        this.shopid = shopid;
    }

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    public String getShopmoney() {
        return shopmoney;
    }

    public void setShopmoney(String shopmoney) {
        this.shopmoney = shopmoney;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getShopstock() {
        return shopstock;
    }

    public void setShopstock(String shopstock) {
        this.shopstock = shopstock;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderid=" + orderid +
                ", uid=" + uid +
                ", shopid=" + shopid +
                ", shopname='" + shopname + '\'' +
                ", shopmoney='" + shopmoney + '\'' +
                ", username='" + username + '\'' +
                ", shopstock='" + shopstock + '\'' +
                ", shopPicname='" + shopPicname + '\'' +
                ", ifdeal=" + ifdeal +
                '}';
    }
}
