package ua.com.miss.service;

import ua.com.miss.entity.Commodity;
import ua.com.miss.filtes.Colors;
import ua.com.miss.filtes.Sizes;

import java.util.List;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
public interface SizesService {
    Sizes findOneById(int id);

    List<Sizes> findAllSizes();

    Sizes findByName (String name);
}
