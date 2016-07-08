package ua.com.miss.service;

import ua.com.miss.entity.Commodity;
import ua.com.miss.filtes.Colors;

import java.util.List;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
public interface ColorsService {

    Colors findOneById(int id);

    List<Colors> findAllColors();

    Colors findByName(String name);
}
