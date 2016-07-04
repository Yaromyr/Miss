package ua.com.miss.service;

import ua.com.miss.entity.Commodity;

import java.util.List;

/**
 * Created by Yulian Bulbuk on 03.07.2016.
 */
public interface CommodityService {

    void save(Commodity commodity);

    void delete(int id);

    Commodity findOneById(int id);

    List<Commodity> findAllCommodities();

    List<Commodity> findCommodityByCategoryName(String name);
}
