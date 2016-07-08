package ua.com.miss.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.com.miss.entity.Commodity;
import ua.com.miss.entity.User;
import ua.com.miss.service.CommodityService;
import ua.com.miss.service.UserService;
import ua.com.miss.validators.UserValidator;

import javax.servlet.http.HttpSession;
import java.security.Principal;

@Controller
public class BaseController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserValidator userValidator;

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String homePage(HttpSession httpSession, Principal principal){
        return "views-base-home";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model){
        model.addAttribute("user", new User());
        return "views-base-registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute User user, BindingResult bindingResult){
        userValidator.validate(user, bindingResult);
        if(bindingResult.hasErrors()){
            return "views-base-registration";
        }else{
            userService.save(user);
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/loginpage", method = RequestMethod.GET)
    public String login(){
        return "views-base-login";
    }
}
