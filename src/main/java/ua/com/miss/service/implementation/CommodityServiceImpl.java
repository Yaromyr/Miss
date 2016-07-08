package ua.com.miss.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.domain.Specifications;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.com.miss.dao.CommodityDao;
import ua.com.miss.entity.Commodity;
import ua.com.miss.form.AccessoriesFilters;
import ua.com.miss.form.DressesFilters;
import ua.com.miss.form.EmbroideriesFilter;
import ua.com.miss.service.CommodityService;

import java.util.List;

/**
 * Created by Yulian Bulbuk on 03.07.2016.
 */
@Service
public class CommodityServiceImpl implements CommodityService {

    @Autowired
    private CommodityDao commodityDao;

    @Override
    public void save(Commodity commodity) {
        commodityDao.save(commodity);
    }

    @Override
    public void delete(int id) {
        commodityDao.delete(commodityDao.findOne(id));
    }

    @Override
    public Commodity findOneById(int id) {
        return commodityDao.findOne(id);
    }

    @Override
    public List<Commodity> findAllCommodities() {
        return commodityDao.findAll();
    }

    @Override
    public List<Commodity> findCommodityByCategoryName(String name) {
        return commodityDao.findCommodityByCategoryName(name);
    }

    @Override
    public Page<Commodity> findAllInDress(DressesFilters dressesFilters, Pageable pageable) {
        return commodityDao.findAll(Specifications.where(dressesFilters.getCommoditySpecifications()).and(findByCategory("Сукня")),pageable);
    }

    @Override
    public Page<Commodity> findAllInEmbroideries(EmbroideriesFilter embroideriesFilter, Pageable pageable) {
        return commodityDao.findAll(Specifications.where(embroideriesFilter.getCommoditySpecifications()).and(findByCategory("Вишиванка")),pageable);
    }

    @Override
    public Page<Commodity> findAllInAccessories(AccessoriesFilters accessoriesFilters, Pageable pageable) {
        return commodityDao.findAll(Specifications.where(accessoriesFilters.getCommoditySpecifications()).and(findByCategory("Аксесуар")),pageable);
    }

    @Override
    public Specification<Commodity> findByCategory(String category) {
        return ((root, criteriaQuery, criteriaBuilder) -> {
            return criteriaBuilder.equal(root.get("category"), category);
        }
        );
    }
    @Override
    @Transactional
    public void saveAndFlush(Commodity commodity) {
        commodityDao.saveAndFlush(commodity);
    }
}