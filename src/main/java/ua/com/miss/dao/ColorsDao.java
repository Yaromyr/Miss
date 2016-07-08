package ua.com.miss.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import ua.com.miss.filtes.Colors;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
public interface ColorsDao extends JpaRepository<Colors, Integer> {
    Colors findByName(@Param("name") String name);
}
