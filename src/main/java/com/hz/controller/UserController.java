package com.hz.controller;

import com.hz.domain.Order;
import com.hz.domain.User;
import com.hz.service.IOrderService;
import com.hz.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.lang.Integer;
import java.util.List;

/**
 * 用户控制器
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private IUserService userService;

    @Autowired
    private IOrderService orderService;

    /**
     * 用户登录方法
     * @param userE_mall
     * @param userPassword
     * @param model
     * @return
     */
    @RequestMapping("/userlogin")
    public String userlogin(String userE_mall, String userPassword, Model model, String ckpassword,HttpServletResponse response){
       if(userE_mall.equals(null)||userPassword.equals(null)){
           return "forward:/login.jsp";

       }
        System.out.println(userE_mall+userPassword);
        String adminE_mail="qwe@qq.com";
        String adminPassword= "admin";
        if(adminE_mail.equals(userE_mall)&&adminPassword.equals(userPassword)){
            return "success";
        }
        User user = userService.findOneByName(userE_mall,userPassword);
//
        System.out.println("是否点击记住密码："+ckpassword);

        if(ckpassword!=null&&ckpassword.equals("re")){
            Cookie cookie = new Cookie("inckpassword",userE_mall+"-"+userPassword);
            cookie.setMaxAge(600);
            response.addCookie(cookie);
        }
        if(user!=null){
            System.out.println("登录成功");
            model.addAttribute("user",user);
            return "forward:/showShop.jsp";
        }else {
            System.out.println("返回登录页面提示账号或者密码错误");
               model.addAttribute("flag","账号或者密码错误");
            return "forward:/login.jsp";
        }


    }

    /**
     * 用户注册方法
     * @param user
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/userRegistered")
    public String userRegistered(User user,Model model)throws Exception{
        System.out.println(user);
        String UserE_mail= user.getUserE_mall();
        String password= user.getUserpassword();
        if(password.length()<6){
            model.addAttribute("flag","密码安全度过低。请重输");
           return "forward:/regUser.jsp";

        }
        //调用通过邮箱查询用户方法
        User user1=userService.findOneByuserE_mall(UserE_mail);
        System.out.println(user1);
        if(user1==null){
            userService.saveUser(user);
            model.addAttribute("flag","注册成功，请登录");

            return "forward:/login.jsp";
            }
        model.addAttribute("flag","邮箱已经存在，请更换~");

        return  "forward:/regUser.jsp";

    }
        @RequestMapping("/userforgetPassword")
    public String userforgetPassword(User user,Model model){
            System.out.println(user);
            String UserE_mail=user.getUserE_mall();
            User userByDB= userService.findOneByuserE_mall(UserE_mail);
            if(user.getUserproblem().equals(userByDB.getUserproblem()) && user.getUsersecret().equals(userByDB.getUsersecret())){
                    model.addAttribute("flag","修改密码成功");
                   userService.UpdateUserPassword(user.getUserpassword(),userByDB.getId());
                return "forward:/login.jsp";
            }
            model.addAttribute("flag","密保问题或者密码错误");
            return "forward:/forget.jsp";


    }

    @RequestMapping("/showuserOrder")
    public String showuserOrder(Integer uid,Model model){
        System.out.println("用户id为"+uid);
        List<Order> orders = orderService.findUserOrderByid(uid);
        model.addAttribute("orders",orders);
        return "forward:/showuserOrder.jsp";
    }

}
