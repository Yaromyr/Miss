package ua.com.miss.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import ua.com.miss.entity.Commodity;
import ua.com.miss.form.AccessoriesFilters;
import ua.com.miss.form.DressesFilters;
import ua.com.miss.form.EmbroideriesFilter;

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

    Page<Commodity> findAllInDress(DressesFilters dressesFilters, Pageable pageable);

    Page<Commodity> findAllInEmbroideries(EmbroideriesFilter embroideriesFilter, Pageable pageable);

    Page<Commodity> findAllInAccessories(AccessoriesFilters accessoriesFilters, Pageable pageable);

    Specification<Commodity> findByCategory(String category);

    void saveAndFlush(Commodity commodity);
}
