package ua.com.miss.service;

import ua.com.miss.entity.Orders;

import java.util.List;

/**
 * Created by Yulian Bulbuk on 03.07.2016.
 */
public interface OrderService {

    void save(Orders orders);

    void delete(int id);

    Orders findOneById(int id);

    List<Orders> findAllOrders();


}
