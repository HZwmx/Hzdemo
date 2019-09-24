package com.hz.dao;

import com.hz.domain.Admin;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * 管理员持久层接口
 */
@Repository
public interface IAdminDao {

    /**
     * admin登录
     * @param adminname
     * @param adminpassword
     * @return
     */
    @Select("select * from admin where adminname=#{adminname} and adminpassword=#{adminpassword}")
    public Admin checkAdminLogin(@Param("adminname") String adminname,  @Param("adminpassword") String adminpassword);




}
