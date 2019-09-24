package com.hz.service.impl;

import com.hz.dao.IUserDao;
import com.hz.domain.User;
import com.hz.service.IUserService;
import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 账户业务层实现类
 */
@Service("userService")
public class UserServiceImpl implements IUserService {
    @Autowired
    private IUserDao userDao;
    @Override
    public List<User> findAll() {
        System.out.println("业务层执行查询所有");
        return userDao.findAll();
    }

    @Override
    public void saveUser(User user) {
        System.out.println("业务层执行保存");
        userDao.saveUser(user);
    }

    @Override
    public User findOneByName(String userE_mall,String userPassword) {
        return userDao.findOneByName(userE_mall,userPassword);
    }

    @Override
    public User findOneByuserE_mall(String userE_mall) {
        return userDao.findOneByuserE_mall(userE_mall);
    }

    @Override
    public void UpdateUserPassword(String newPassword, Integer id) {
       userDao.UpdateUserPassword(newPassword,id);
    }

    @Override
    public User findUserByid(Integer id) {
        return userDao.findUserByid(id);
    }
}
