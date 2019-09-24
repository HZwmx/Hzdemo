package com.hz.service;

import com.hz.domain.Admin;

public interface IAdminService {
    /**
     * 管理登录
     * @param adminname
     * @param adminpassword
     * @return
     */
    public Admin checkAdminLogin(String adminname, String adminpassword);
}
