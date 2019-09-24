package com.hz.service.impl;

import com.hz.dao.IAdminDao;
import com.hz.domain.Admin;
import com.hz.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("adminService")
public class AdminServiceImpl implements IAdminService {
    @Autowired
    private IAdminDao adminDao;

    @Override
    public Admin checkAdminLogin(String adminname, String adminpassword) {
        return adminDao.checkAdminLogin(adminname,adminpassword);
    }
}
