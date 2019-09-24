package com.hz.controller;

import com.hz.domain.Admin;
import com.hz.domain.Order;
import com.hz.domain.User;
import com.hz.service.IAdminService;
import com.hz.service.IOrderService;
import com.hz.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private IAdminService adminService;
    @Autowired
    private IUserService userService;

    @Autowired
    private IOrderService orderService;

    @RequestMapping("/adminLogin")
    public String adminLogin(String adminname, String adminpassword, Model model){
        System.out.println(adminname+adminpassword);

        Admin admin = adminService.checkAdminLogin(adminname, adminpassword);
        if(admin!=null){
            model.addAttribute("admin",admin);
            return "forward:/main/main.jsp";

        }
        return "redirect:/Byhz.jsp";


    }

    /*
        展示所有用户信息
     */

    @RequestMapping("/ShowUserInfo")
    public String ShowUserInfo(Model model){
        List<User> users = userService.findAll();
        model.addAttribute("user",users);

        return"forward:/admin/showUser.jsp";
    }

    @RequestMapping("/changePwd")
    public String changePwd(Integer userid,String newpassword,Model model){
        System.out.println(userid+newpassword);
        if(newpassword.length()<6){
            model.addAttribute("flag","密码长度过低");
            return"forward:/admin/changePwd.jsp";
        }
        userService.UpdateUserPassword(newpassword,userid);
        model.addAttribute("flag","重置密码成功");
        return "forward:/admin/changePwd.jsp";
    }

    @ResponseBody
    @RequestMapping("/showAllUserOrder")
    public List showAllUserOrder(Model model){
        List<Order> orders = orderService.findAllUserOrdel();
        model.addAttribute("orders",orders);
        model.addAttribute("btn",0);
        return orders;

//
//        return "forward:/admin/showAllUserOrder.jsp";
    }


    @RequestMapping("/dealOrder")
    public String dealOrder(Integer orderid,Model model){
        System.out.println(orderid);
        orderService.changeorderstatus(orderid);
        List<Order> orders = orderService.findAllUserOrdel();
        model.addAttribute("orders",orders);

        return "forward:/admin/showAllUserOrder.jsp";
    }


}
