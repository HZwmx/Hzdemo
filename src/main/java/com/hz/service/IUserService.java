package com.hz.service;

import com.hz.domain.User;
import org.apache.ibatis.annotations.Insert;


import java.util.List;

/**
 * 账号业务层接口
 */
public interface IUserService {

    /**
     * 查询所有用户
     * @return
     */

    public List<User> findAll();

    /**
     * 保存用户
     * @param user
     */

    public void saveUser(User user);

    /**
     * 根据邮箱和密码查询用户
     * @param userE_mall
     * @return
     */
    public User findOneByName(String userE_mall,String userPassword);

    /**
     * 只根据邮箱查询用户
     * @param userE_mall
     * @return
     */
    public User findOneByuserE_mall( String userE_mall);

    /**
     * 根据id 更新密码
     * @param newPassword
     * @param id
     */
    public void UpdateUserPassword(String newPassword, Integer id);

    /**
     * 根据id查询用户
     * @param id
     * @return
     */
    public  User findUserByid(Integer id);

}
