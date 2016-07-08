package ua.com.miss.binders;

import org.springframework.beans.factory.annotation.Autowired;
import ua.com.miss.service.ColorsService;

import java.beans.PropertyEditorSupport;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
public class ColorsBinder extends PropertyEditorSupport {

    @Autowired
    private ColorsService colorsService;

    public ColorsBinder(ColorsService colorsService) {
        this.colorsService = colorsService;
    }

    @Override
    public void setAsText(String text) throws IllegalArgumentException {
        setValue(colorsService.findByName(text));
    }
}
