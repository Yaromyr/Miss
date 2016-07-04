package ua.com.miss.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.miss.dao.CommodityDao;
import ua.com.miss.entity.Commodity;
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
}
