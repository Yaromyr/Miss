package ua.com.miss.service;

import ua.com.miss.entity.Commodity;
import ua.com.miss.filtes.Styles;

import java.util.List;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
public interface StylesService {

    Styles findOneById(int id);

    List<Styles> findAllStyles();
}
