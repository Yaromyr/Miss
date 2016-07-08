package ua.com.miss.binders;

import org.springframework.beans.factory.annotation.Autowired;
import ua.com.miss.service.SizesService;

import java.beans.PropertyEditorSupport;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
public class SizesBinder extends PropertyEditorSupport {

    @Autowired
    private SizesService sizesService;

    public SizesBinder(SizesService sizesService) {
        this.sizesService = sizesService;
    }

    @Override
    public void setAsText(String text) throws IllegalArgumentException {
        setValue(sizesService.findByName(text));
    }
}
