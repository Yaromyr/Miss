package ua.com.miss.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.miss.dao.StylesDao;
import ua.com.miss.filtes.Styles;
import ua.com.miss.service.StylesService;

import java.util.List;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
@Service
public class StylesServiceImpl implements StylesService {

    @Autowired
    private StylesDao stylesDao;

    @Override
    public Styles findOneById(int id) {
        return stylesDao.findOne(id);
    }

    @Override
    public List<Styles> findAllStyles() {
        return stylesDao.findAll();
    }
}
