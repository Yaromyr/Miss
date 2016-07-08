package ua.com.miss.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.miss.entity.CommodityPictures;

/**
 * Created by Yulian Bulbuk on 06.07.2016.
 */
public interface CommodityPictureDao extends JpaRepository<CommodityPictures, Integer>{
}
