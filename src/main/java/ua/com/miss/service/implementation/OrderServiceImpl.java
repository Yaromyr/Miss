package ua.com.miss.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.miss.dao.CommodityDao;
import ua.com.miss.dao.OrderDao;
import ua.com.miss.dao.UserDao;
import ua.com.miss.entity.Commodity;
import ua.com.miss.entity.Order;
import ua.com.miss.entity.User;
import ua.com.miss.service.OrderService;

import java.util.List;

/**
 * Created by Yulian Bulbuk on 06.07.2016.
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDao orderDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private CommodityDao commodityDao;

    @Override
    public void save(Order order) {
        orderDao.save(order);
    }

    @Override
    public void delete(int id) {
        orderDao.delete(id);
    }

    @Override
    public Order findOneById(int id) {
        return orderDao.findOne(id);
    }

    @Override
    public List<Order> findAllCommodities() {
        return orderDao.findAll();
    }

    @Override
    public void buy(String principal, String id) {
        Order order = new Order();
        order.setUser(userDao.findOne(Integer.parseInt(principal)));
        List<Commodity>commodityList = order.getCommodityList();
        commodityList.add(commodityDao.findOne(Integer.parseInt(id)));
        order.setType(true);
        orderDao.save(order);
    }

    @Override
    public void rent(String principal, String id) {
        Order order = new Order();
        order.setUser(userDao.findOne(Integer.parseInt(principal)));
        List<Commodity>commodityList = order.getCommodityList();
        commodityList.add(commodityDao.findOne(Integer.parseInt(id)));
        order.setType(false);
        orderDao.save(order);
    }
}
