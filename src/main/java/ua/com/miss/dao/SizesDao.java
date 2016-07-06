package ua.com.miss.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.miss.filtes.Sizes;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
public interface SizesDao extends JpaRepository<Sizes, Integer> {
}
