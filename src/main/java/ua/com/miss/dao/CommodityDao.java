package ua.com.miss.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.query.Param;
import ua.com.miss.entity.Commodity;

import java.util.List;

/**
 * Created by Yulian Bulbuk on 03.07.2016.
 */
public interface CommodityDao extends JpaRepository<Commodity, Integer>, JpaSpecificationExecutor<Commodity> {

    List<Commodity> findCommodityByCategoryName(@Param("name")String name);
}
