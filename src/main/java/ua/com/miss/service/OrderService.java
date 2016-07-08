package ua.com.miss.service;

import ua.com.miss.entity.Commodity;
import ua.com.miss.entity.Order;

import java.util.List;

/**
 * Created by Yulian Bulbuk on 06.07.2016.
 */
public interface OrderService {
    void save(Order order);

    void delete(int id);

    Order findOneById(int id);

    List<Order> findAllCommodities();

    void buy(String principal, String id);

    void rent(String principal, String id);
}
