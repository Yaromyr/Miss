package ua.com.miss.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.miss.entity.User;

public interface UserDao extends JpaRepository<User, Integer> {

    User findUserByLogin(@Param("login")String login);
}
