package ua.com.miss.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ua.com.miss.binders.ColorsBinder;
import ua.com.miss.binders.SizesBinder;
import ua.com.miss.entity.Commodity;
import ua.com.miss.filtes.Colors;
import ua.com.miss.filtes.Sizes;
import ua.com.miss.form.AccessoriesFilters;
import ua.com.miss.form.DressesFilters;
import ua.com.miss.form.EmbroideriesFilter;
import ua.com.miss.service.ColorsService;
import ua.com.miss.service.CommodityPicturesService;
import ua.com.miss.service.CommodityService;
import ua.com.miss.service.SizesService;

import javax.servlet.http.HttpServletResponse;
import java.io.*;

@Controller
public class CommodityController {

    @Autowired
    private CommodityService commodityService;

    @Autowired
    private ColorsService colorsService;

    @Autowired
    private SizesService sizesService;

    @Autowired
    private CommodityPicturesService commodityPicturesService;


    @InitBinder
    public void InitBinder(WebDataBinder binder){
        binder.registerCustomEditor(Colors.class,new ColorsBinder(colorsService));
        binder.registerCustomEditor(Sizes.class, new SizesBinder(sizesService));
    }

    @RequestMapping(value = "get/all/commodities/dresses", method = RequestMethod.GET)
    private String dresses(Model model, @ModelAttribute DressesFilters dressesFilters,@PageableDefault(size = 12) Pageable pageable){
        model.addAttribute("colors", colorsService.findAllColors());
        model.addAttribute("sizes", sizesService.findAllSizes());
        model.addAttribute("commodity", new Commodity());
        model.addAttribute("dresses", commodityService.findAllInDress(dressesFilters,pageable));
        return "views-commodities-dresses";
    }

    @RequestMapping(value = "get/all/commodities/embroideries", method = RequestMethod.GET)
    private String embroideries(Model model, @ModelAttribute EmbroideriesFilter embroideriesFilter,@PageableDefault(size = 12) Pageable pageable){
        model.addAttribute("colors", colorsService.findAllColors());
        model.addAttribute("sizes", sizesService.findAllSizes());
        model.addAttribute("commodity", new Commodity());
        model.addAttribute("embroideries", commodityService.findAllInEmbroideries(embroideriesFilter,pageable));
        return "views-commodities-embroideries";
    }

    @RequestMapping(value = "get/all/commodities/accessories", method = RequestMethod.GET)
    private String accessories(Model model, @ModelAttribute AccessoriesFilters accessoriesFilters,@PageableDefault(size = 12) Pageable pageable){
        model.addAttribute("colors", colorsService.findAllColors());
        model.addAttribute("sizes", sizesService.findAllSizes());
        model.addAttribute("commodity", new Commodity());
        model.addAttribute("accessories", commodityService.findAllInAccessories(accessoriesFilters,pageable));
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

    @RequestMapping(value = "/add/new/commodity/dress",method = RequestMethod.POST)
    public String addCommodity(@ModelAttribute Commodity commodity, @RequestParam MultipartFile[] picture) throws IOException {
        commodity.setCategory("Сукня");
        commodityService.saveAndFlush(commodity);
        for (int i = 0; i < picture.length; i++) {
            commodityPicturesService.saveFile(picture[i], String.valueOf(commodity.getId()));
        }
        return "redirect:/get/all/commodities/dresses";
    }

    @RequestMapping(value = "/add/new/commodity/embroider", method = RequestMethod.POST)
    public String addEmbroidery(@ModelAttribute Commodity commodity, @RequestParam MultipartFile[] picture) throws IOException {
        commodity.setCategory("Вишиванка");
        commodityService.saveAndFlush(commodity);
        for (int i = 0; i < picture.length; i++) {
            commodityPicturesService.saveFile(picture[i], String.valueOf(commodity.getId()));
        }
        return "redirect:/get/all/commodities/embroideries";
    }

    @RequestMapping(value = "/add/new/commodity/accessory", method = RequestMethod.POST)
    public String addAccessory(@ModelAttribute Commodity commodity, @RequestParam MultipartFile[] picture) throws IOException {
        commodity.setCategory("Аксесуар");
        commodityService.saveAndFlush(commodity);
        for (int i = 0; i < picture.length; i++) {
            commodityPicturesService.saveFile(picture[i], String.valueOf(commodity.getId()));
        }
        return "redirect:/get/all/commodities/accessories";
    }
    @RequestMapping(value="/files/img/commodities/{id}/{path}.jpg")
    public void allLogoImageJpg(@PathVariable String path,@PathVariable int id, HttpServletResponse response) throws IOException{
        InputStream is = new FileInputStream(new File(System.getProperty("catalina.home")+"/files/img/commodities/"+id+ "/" + path + ".jpg"));
        BufferedInputStream inputStream = new BufferedInputStream(is);
        int nRead;
        byte[] b = new byte[10000];
        ByteArrayOutputStream arrayOutputStream=new ByteArrayOutputStream();
        while((nRead= inputStream.read(b,0,b.length)) != -1){
            arrayOutputStream.write(b,0,nRead);
        }
        arrayOutputStream.flush();
        byte[] bn =arrayOutputStream.toByteArray();
        response.setContentType("image/jpg");
        response.setContentLength(bn.length);
        OutputStream os = response.getOutputStream();
        os.write(bn);
        os.flush();
        os.close();
        inputStream.close();
    }
    @RequestMapping(value="/files/img/commodities/{id}/{path}.png")
    public void allLogoImagePng(@PathVariable String path,@PathVariable int id, HttpServletResponse response) throws IOException{
        InputStream is = new FileInputStream(new File(System.getProperty("catalina.home")+"/files/img/commodities/"+id +"/"+ path + ".png"));

        BufferedInputStream inputStream = new BufferedInputStream(is);
        int nRead;
        byte[] b = new byte[10000];
        ByteArrayOutputStream arrayOutputStream=new ByteArrayOutputStream();
        while((nRead= inputStream.read(b,0,b.length)) != -1){
            arrayOutputStream.write(b,0,nRead);
        }
        arrayOutputStream.flush();
        byte[] bn =arrayOutputStream.toByteArray();
        response.setContentType("image/png");
        response.setContentLength(bn.length);
        OutputStream os = response.getOutputStream();
        os.write(bn);
        os.flush();
        os.close();
        inputStream.close();
    }
    @RequestMapping(value="/files/img/commodities/{id}/{path}.jpeg")
    public void allLogoImageJpeg(@PathVariable String path,@PathVariable int id, HttpServletResponse response) throws IOException{
        InputStream is = new FileInputStream(new File(System.getProperty("catalina.home")+"/files/img/commodities/"+id+"/" + path + ".jpeg"));
        BufferedInputStream inputStream = new BufferedInputStream(is);
        int nRead;
        byte[] b = new byte[10000];
        ByteArrayOutputStream arrayOutputStream=new ByteArrayOutputStream();
        while((nRead= inputStream.read(b,0,b.length)) != -1){
            arrayOutputStream.write(b,0,nRead);
        }
        arrayOutputStream.flush();
        byte[] bn =arrayOutputStream.toByteArray();
        response.setContentType("image/jpeg");
        response.setContentLength(bn.length);
        OutputStream os = response.getOutputStream();
        os.write(bn);
        os.flush();
        os.close();
        inputStream.close();
    }
}
