package ua.com.miss.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.miss.entity.Order;

/**
 * Created by Yulian Bulbuk on 06.07.2016.
 */
public interface OrderDao extends JpaRepository<Order, Integer> {
}
