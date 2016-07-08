package ua.com.miss.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Yulian Bulbuk on 07.07.2016.
 */
@Controller
public class ErrorController {

    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public String error404(){
        return "views-errors-404";
    }
}
