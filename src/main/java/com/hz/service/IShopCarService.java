package com.hz.service;

import com.hz.domain.ShopCar;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 购物车业务层接口
 */
public interface IShopCarService {

    /**
     * 根据用户ID 查询该用户购物车中所有的商品
     * @param uid
     * @return
     */

    public List<ShopCar> findAllUserShopbyUid(Integer uid);

    /**
     * 增加商品到用户的购物车
     * @param shopCar
     */
    public void AddShopToUserCar(ShopCar shopCar);

    /**
     * 重复点击 添加购物车 修改库存
     * @param shopid
     * @param shopstock
     */
    public  void updateUserShopCarStock( Integer shopid,String shopstock);

    /**
     * 根据id删除商品id
     * @param shopid
     */
    public  void deleteShopbyid(Integer shopid);

    /**
     * 根据商品id查询商品
     */

    public ShopCar findShopByshopid(Integer shopid);
}
