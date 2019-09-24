package com.hz.service.impl;

import com.hz.dao.IShopCarDao;
import com.hz.domain.ShopCar;
import com.hz.service.IShopCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("shopCarService")
public class ShopCarServiceImpl implements IShopCarService {
    @Autowired
    private IShopCarDao shopCarDao;
    @Override
    public List<ShopCar> findAllUserShopbyUid(Integer uid) {
        return shopCarDao.findAllUserShopbyUid(uid);
    }

    @Override
    public void AddShopToUserCar(ShopCar shopCar) {
        shopCarDao.AddShopToUserCar(shopCar);
    }

    @Override
    public void updateUserShopCarStock(Integer shopid, String shopstock) {
        shopCarDao.updateUserShopCarStock(shopid,shopstock);
    }

    @Override
    public void deleteShopbyid(Integer shopid) {
        shopCarDao.deleteShopbyid(shopid);
    }

    @Override
    public ShopCar findShopByshopid(Integer shopid) {
        return shopCarDao.findShopByshopid(shopid);
    }
}
