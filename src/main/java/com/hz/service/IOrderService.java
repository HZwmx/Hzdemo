package com.hz.service;

import com.hz.domain.Order;


import java.util.List;

public interface IOrderService {
    /**
     * 保存一个订单
     */
    public void savaOrder(Order order);
    public List<Order> findUserOrderByid( Integer uid);

    public List<Order> findAllUserOrdel();
    public  void  changeorderstatus(Integer orderid);
}
