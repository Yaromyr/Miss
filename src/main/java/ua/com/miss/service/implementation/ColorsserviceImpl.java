package ua.com.miss.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.miss.dao.ColorsDao;
import ua.com.miss.filtes.Colors;
import ua.com.miss.service.ColorsService;

import java.util.List;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
@Service
public class ColorsServiceImpl implements ColorsService{

    @Autowired
    private ColorsDao colorsDao;

    @Override
    public Colors findOneById(int id) {
        return colorsDao.findOne(id);
    }

    @Override
    public List<Colors> findAllColors() {
        return colorsDao.findAll();
    }
}
