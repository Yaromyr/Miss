package ua.com.miss.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.miss.dao.SizesDao;
import ua.com.miss.filtes.Sizes;
import ua.com.miss.service.SizesService;

import java.util.List;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
@Service
public class SizesServiceImpl implements SizesService {

    @Autowired
    private SizesDao sizesDao;

    @Override
    public Sizes findOneById(int id) {
        return sizesDao.findOne(id);
    }

    @Override
    public List<Sizes> findAllSizes() {
        return sizesDao.findAll();
    }
}
