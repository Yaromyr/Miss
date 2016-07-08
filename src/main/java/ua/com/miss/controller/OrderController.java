package ua.com.miss.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.com.miss.entity.Commodity;
import ua.com.miss.entity.User;
import ua.com.miss.service.CommodityService;
import ua.com.miss.service.OrderService;
import ua.com.miss.service.UserService;

import java.security.Principal;
import java.util.List;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
@Controller
public class OrderController {

    @Autowired
    private UserService userService;

    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/buy/commodity/{id}", method = RequestMethod.POST)
    public String buyCommodity(Principal principal, @PathVariable String id){
        orderService.buy(principal.getName(), id);
        return "redirect:/";
    }

    @RequestMapping(value = "/rent/commodity/{id}", method = RequestMethod.POST)
    public String rentCommodity(Principal principal, @PathVariable String id){
        orderService.rent(principal.getName(), id);
        return "redirect:/";
    }
}
