package ua.com.miss.service;

import ua.com.miss.entity.Orders;
import ua.com.miss.entity.User;

import java.util.List;

public interface UserService {

    void save(User user);

    void delete(int id);

    User findOneById(int id);

    List<User> findAllUsers();
}
