package com.hz.dao;

import com.hz.domain.ShopCar;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 商品购物车持久层接口
 */
@Repository
public interface IShopCarDao {
    /**
     * 根据用户ID 查询该用户购物车中所有的商品
     * @param uid
     * @return
     */
    @Select("select * from user_shopcar where uid=#{uid}")
    public List<ShopCar> findAllUserShopbyUid( @Param("uid") Integer uid);

    /**
     * 增加商品到用户的购物车中
     * @param shopCar
     */
    @Insert("insert into user_shopcar(shopid,shopmoeny,shopname,shopstock,uid,shopPicname)value(#{shopid},#{shopmoeny},#{shopname},#{shopstock},#{uid},#{shopPicname})")
    public void AddShopToUserCar(ShopCar shopCar);

    @Update("update user_shopcar set shopstock=#{shopstock} where shopid=#{shopid}")
    public  void updateUserShopCarStock( @Param("shopid") Integer shopid,@Param("shopstock") String shopstock);

    /**
     * 根据id删除商品id
     * @param shopid
     */
    @Delete("delete from user_shopcar where shopid=#{shopidid}")
    public  void deleteShopbyid( @Param("shopidid") Integer shopid);

    /**
     * 根据商品id查询商品
     * @param shopid
     * @return
     */
    @Select("select * from user_shopcar where shopid=#{shopid}")
    public ShopCar findShopByshopid(@Param("shopid") Integer shopid);
}
