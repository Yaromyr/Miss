package ua.com.miss.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.com.miss.entity.Commodity;
import ua.com.miss.service.CommodityService;

@Controller
public class CommodityController {

    @Autowired
    private CommodityService commodityService;

    @RequestMapping(value = "get/all/commodities/dresses", method = RequestMethod.GET)
    private String dresses(Model model){
        model.addAttribute("commodity", new Commodity());
        model.addAttribute("dresses", commodityService.findCommodityByCategoryName("Сукня"));
        return "views-commodities-dresses";
    }

    @RequestMapping(value = "get/all/commodities/embroideries", method = RequestMethod.GET)
    private String embroideries(Model model){
        model.addAttribute("commodity", new Commodity());
        model.addAttribute("embroideries", commodityService.findCommodityByCategoryName("Вишиванка"));
        return "views-commodities-embroideries";
    }

    @RequestMapping(value = "get/all/commodities/accessories", method = RequestMethod.GET)
    private String accessorys(Model model){
        model.addAttribute("commodity", new Commodity());
        model.addAttribute("accessories", commodityService.findCommodityByCategoryName("Сорочка"));
        return "views-commodities-accessories";
    }

    @RequestMapping(value = "/get/one/commodity/dress/{id}", method = RequestMethod.GET)
    private String dress(@PathVariable String id, Model model){
        model.addAttribute("dress",commodityService.findOneById(Integer.parseInt(id)));
        return "views-commodity-dress";
    }

    @RequestMapping(value = "/get/one/commodity/embroidery/{id}", method = RequestMethod.GET)
    private String embroidery(@PathVariable String id, Model model){
        model.addAttribute("embroidery",commodityService.findOneById(Integer.parseInt(id)));
        return "views-commodity-embroidery";
    }

    @RequestMapping(value = "/get/one/commodity/accessory/{id}", method = RequestMethod.GET)
    private String accessory(@PathVariable String id, Model model){
        model.addAttribute("accessory",commodityService.findOneById(Integer.parseInt(id)));
        return "views-commodity-accessory";
    }

    @RequestMapping(value = "/add/new/commodity/dress", method = RequestMethod.POST)
    public String addDress(@ModelAttribute Commodity commodity){
        commodity.setCategory("Плаття");
        commodityService.save(commodity);
        return "redirect:/home";
    }

    @RequestMapping(value = "/add/new/commodity/embroider", method = RequestMethod.POST)
    public String addEmbroidery(@ModelAttribute Commodity commodity){
        commodity.setCategory("Вишиванка");
        commodityService.save(commodity);
        return "redirect:/home";
    }

    @RequestMapping(value = "/add/new/commodity/accessory", method = RequestMethod.POST)
    public String addAccessory(@ModelAttribute Commodity commodity){
        commodity.setCategory("Аксесуар");
        commodityService.save(commodity);
        return "redirect:/home";
    }
}
