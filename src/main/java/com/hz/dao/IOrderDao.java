package com.hz.dao;

import com.hz.domain.Order;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 订单持久层接口
 */
@Repository
public interface IOrderDao {
    /**
     * 保存一个订单
     * @param order
     */

    @Insert("insert into `order`(uid,shopid,username,shopmoney,shopname,shopstock,shopPicname,ifdeal) values(#{uid},#{shopid},#{username},#{shopmoney},#{shopname},#{shopstock},#{shopPicname},#{ifdeal})")
    public void savaOrder(Order order);
    /**
     * 根据用户id 查询该用户的订单
     */
    @Select("select * from `order` where uid=#{uid}")
    public List<Order> findUserOrderByid(@Param("uid") Integer uid);
    /**
     * 查询所有用户的订单
     */
    @Select("select * from `order`; ")
    public List<Order> findAllUserOrdel();

    /**
     * 根据订单id修改订单状态
     */
    @Update("update `order` set ifdeal =1 where orderid= #{orderid}")
    public  void  changeorderstatus( @Param("orderid") Integer orderid);



}
