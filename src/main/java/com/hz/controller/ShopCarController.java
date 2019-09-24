package com.hz.controller;

import com.hz.domain.Order;
import com.hz.domain.ShopCar;
import com.hz.domain.User;
import com.hz.service.IOrderService;
import com.hz.service.IShopCarService;
import com.hz.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/shop")
public class ShopCarController {
    @Autowired
    private IShopCarService shopCarService;

    @Autowired
    private IUserService userService;

    @Autowired
    private IOrderService orderService;

    @ResponseBody
    @RequestMapping("/addShopToCar")
    public Map addShopToCar(ShopCar shopCar){
        System.out.println(shopCar.getUid()+"成功访问查询所有购物车");
        Integer uid= shopCar.getUid();
        System.out.println(uid);
        List<ShopCar> cars = shopCarService.findAllUserShopbyUid(uid);

        for (ShopCar temp: cars) {
                if(shopCar.getShopname().equals(temp.getShopname())){
                    System.out.println(temp);
                    if(shopCar.getShopstock()!=null) {
                        Integer tempNum = Integer.valueOf(shopCar.getShopstock());
                        Integer tempNum2=Integer.valueOf(temp.getShopstock());
                        tempNum = tempNum + tempNum2;
                        System.out.println(tempNum);
                        shopCarService.updateUserShopCarStock(temp.getShopid(),tempNum+"");
                        System.out.println("接收到AJAX请求");
                        Map map = new HashMap();
                        map.put("123","123");
                        return map;
                    }

                }
        }
             System.out.println(shopCar);
            shopCarService.AddShopToUserCar(shopCar);
            System.out.println("1234");
            Map map = new HashMap();
            map.put("123","123");
            return map;

    }
    @RequestMapping("/myshopcar")
    public String myshopcar(Integer uid,Model model,String userE_mall){
        if (userE_mall.equals("")){
            model.addAttribute("flag","请登录或注册");
            return  "forward:/login.jsp";
        }
        System.out.println(uid+userE_mall);
        List<ShopCar> shopCars = shopCarService.findAllUserShopbyUid(uid);
        User user = userService.findOneByuserE_mall(userE_mall);
        System.out.println(shopCars);
        model.addAttribute("shopCars",shopCars);
        model.addAttribute("user",user);
        model.addAttribute("btn",0);
        return  "forward:/userShopcar.jsp";
    }

    @ResponseBody
    @RequestMapping("/buyshop")
    public Map BuyShop(Integer shopid){
        System.out.println(shopid+"nihao");
        ShopCar shop = shopCarService.findShopByshopid(shopid);
        Integer uid= shop.getUid();
        User user = userService.findUserByid(uid);
        Order order = new Order();
        order.setShopid(shop.getShopid());
        order.setShopmoney(shop.getShopmoeny());
        order.setShopname(shop.getShopname());
        order.setUid(user.getId());
        order.setUsername(user.getUsername());
        order.setShopstock(shop.getShopstock());
        order.setShopPicname(shop.getShopPicname());
        order.setIfdeal(0);
        System.out.println(order);
        //从购物车删除前 将此订单保存
        orderService.savaOrder(order);
        shopCarService.deleteShopbyid(shopid);
        System.out.println("123");
        Map map = new HashMap();
        map.put("abc","123");
        return map;
    }


}
