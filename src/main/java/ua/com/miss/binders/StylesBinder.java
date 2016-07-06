package ua.com.miss.binders;

import org.springframework.beans.factory.annotation.Autowired;
import ua.com.miss.service.StylesService;

import java.beans.PropertyEditorSupport;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
public class StylesBinder extends PropertyEditorSupport {

    @Autowired
    private StylesService stylesService;

    public StylesBinder(StylesService stylesService) {
        this.stylesService = stylesService;
    }

    @Override
    public void setAsText(String text) throws IllegalArgumentException {
        setValue(stylesService.findOneById(Integer.valueOf(text)));
    }
}
