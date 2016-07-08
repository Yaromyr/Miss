package ua.com.miss.service;

import org.springframework.web.multipart.MultipartFile;
import ua.com.miss.entity.Commodity;
import ua.com.miss.entity.CommodityPictures;
import ua.com.miss.entity.User;
import ua.com.miss.form.DressesFilters;

import java.util.List;

/**
 * Created by Yulian Bulbuk on 06.07.2016.
 */
public interface CommodityPicturesService {

    void saveFile(MultipartFile file, String id);

    void delete(int id);

    CommodityPictures findOneById(int id);

    List<CommodityPictures> findAllUsers();

}
