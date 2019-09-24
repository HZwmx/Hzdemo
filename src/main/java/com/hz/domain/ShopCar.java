package com.hz.domain;

import java.io.Serializable;

/**
 * 购物车实体类
 */
public class ShopCar implements Serializable {
    private Integer shopid;
    private String  shopmoeny;
    private String  shopname;
    private String  shopstock;
    private Integer uid;
    private String shopPicname;

    public String getShopPicname() {
        return shopPicname;
    }

    public void setShopPicname(String shopPicname) {
        this.shopPicname = shopPicname;
    }

    public Integer getShopid() {
        return shopid;
    }

    public void setShopid(Integer shopid) {
        this.shopid = shopid;
    }

    public String getShopmoeny() {
        return shopmoeny;
    }

    public void setShopmoeny(String shopmoeny) {
        this.shopmoeny = shopmoeny;
    }

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    public String getShopstock() {
        return shopstock;
    }

    public void setShopstock(String shopstock) {
        this.shopstock = shopstock;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    @Override
    public String toString() {
        return "ShopCar{" +
                "shopid=" + shopid +
                ", shopmoeny='" + shopmoeny + '\'' +
                ", shopname='" + shopname + '\'' +
                ", shopstock='" + shopstock + '\'' +
                ", uid=" + uid +
                ", shopPicname='" + shopPicname + '\'' +
                '}';
    }
}
