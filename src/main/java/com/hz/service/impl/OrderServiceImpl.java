package com.hz.service.impl;

import com.hz.dao.IOrderDao;
import com.hz.domain.Order;
import com.hz.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("orderService")
public class OrderServiceImpl implements IOrderService {
    @Autowired
    private IOrderDao orderDao;
    @Override
    public void savaOrder(Order order) {
        orderDao.savaOrder(order);

    }

    @Override
    public List<Order> findUserOrderByid(Integer uid) {
        return orderDao.findUserOrderByid(uid);
    }

    @Override
    public List<Order> findAllUserOrdel() {
        return orderDao.findAllUserOrdel();
    }

    @Override
    public void changeorderstatus(Integer orderid) {

        orderDao.changeorderstatus(orderid);
    }
}
