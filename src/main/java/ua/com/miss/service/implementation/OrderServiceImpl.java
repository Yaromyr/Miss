package ua.com.miss.service.implementation;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.miss.dao.OrderDao;
import ua.com.miss.entity.Orders;
import ua.com.miss.service.OrderService;

import java.util.List;

/**
 * Created by Yulian Bulbuk on 03.07.2016.
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDao orderDao;

    @Override
    public void save(Orders orders) {
        orderDao.save(orders);
    }

    @Override
    public void delete(int id) {
        orderDao.delete(orderDao.findOne(id));
    }

    @Override
    public Orders findOneById(int id) {
        return orderDao.findOne(id);
    }

    @Override
    public List<Orders> findAllOrders() {
        return orderDao.findAll();
    }
}
