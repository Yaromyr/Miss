package ua.com.miss.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Yulian Bulbuk on 06.07.2016.
 */
@Controller
public class ServiceController {

    @RequestMapping(value = "/view/beauty-zone", method = RequestMethod.GET)
    public String beautyZone(){
        return "views-services-beauty";
    }

    @RequestMapping(value = "/view/project", method = RequestMethod.GET)
    public String project(){
        return "views-services-project";
    }

    @RequestMapping(value = "/view/contacts", method = RequestMethod.GET)
    public String contacts(){
        return "views-services-contacts";
    }

    @RequestMapping(value = "/view/rent/to", method = RequestMethod.GET)
    public String rentTo(){
        return "views-rent-to";
    }

    @RequestMapping(value = "/view/rent/for", method = RequestMethod.GET)
    public String rentFor(){
        return "views-rent-for";
    }

    @RequestMapping(value = "/view/ask", method = RequestMethod.GET)
    public String askme(){
        return "views-services-ask";
    }

    @RequestMapping(value = "/view/photo-session", method = RequestMethod.GET)
    public String photoSession(){
        return "views-services-photosession";
    }

    @RequestMapping(value = "/view/news", method = RequestMethod.GET)
    public String news(){
        return "views-services-news";
    }
}
