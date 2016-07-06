package ua.com.miss.binders;

import org.springframework.beans.factory.annotation.Autowired;
import ua.com.miss.service.CommodityService;

import java.beans.PropertyEditorSupport;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
public class CommodityBinder extends PropertyEditorSupport {

    @Autowired
    private CommodityService commodityService;

    public CommodityBinder(CommodityService commodityService) {
        this.commodityService = commodityService;
    }

    @Override
    public void setAsText(String text) throws IllegalArgumentException {
        setValue(commodityService.findOneById(Integer.valueOf(text)));
    }
}
