package ua.com.miss.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.miss.entity.Orders;

/**
 * Created by Yulian Bulbuk on 03.07.2016.
 */
public interface OrderDao extends JpaRepository<Orders, Integer> {
}
