package com.hz.dao;

import com.hz.domain.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 用户持久层接口
 */
@Repository
public interface IUserDao {
    /**
     * 查询所有用户
     * @return
     */
    @Select("select * from User")
    public List<User> findAll();

    /**
     * 保存用户
     * @param user
     */
    @Insert("insert into user(username,userpassword,userE_mall,userphone,usersecret,userproblem)value(#{username},#{userpassword},#{userE_mall},#{userphone},#{usersecret},#{userproblem})")
    public void saveUser(User user);

    /**
     * 更据E_mail 和 password 判断登录
     * @param userE_mall
     * @param userPassword
     * @return
     */
    @Select("select * from User where userE_mall=#{userE_mall} and userPassword=#{userPassword}")
    public User findOneByName(@Param("userE_mall") String userE_mall, @Param("userPassword") String userPassword);

    /**
     * 根据邮箱查询用户
     * @param userE_mall
     * @return
     */
    @Select("select * from User where userE_mall=#{userE_mall}")
    public User findOneByuserE_mall(@Param("userE_mall") String userE_mall);

    /**
     * 根据ID 更新用户密码
     * @param newPassword
     * @param id
     */
    @Update("update User set userpassword=#{newPassword} where id=#{id}")
    public void UpdateUserPassword(@Param("newPassword") String newPassword,@Param("id") Integer id);

    /**
     * 根据ID查询用户
     */
    @Select("select * from user where id=#{id}")
    public  User findUserByid(@Param("id") Integer id);

}
