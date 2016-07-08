package ua.com.miss.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import ua.com.miss.dao.CommodityDao;
import ua.com.miss.dao.CommodityPictureDao;
import ua.com.miss.entity.Commodity;
import ua.com.miss.entity.CommodityPictures;
import ua.com.miss.service.CommodityPicturesService;

import java.io.*;
import java.util.List;

@Service
public class CommodityPicturesServiceImpl implements CommodityPicturesService {

    @Autowired
    private CommodityPictureDao commodityPictureDao;
    @Autowired
    private CommodityDao commodityDao;


    @Transactional
    @Override
    public void saveFile(MultipartFile file, String id){
        File pathToFolder = new File(System.getProperty("catalina.home")+"/files/img/commodities/"+ id +"/");
        createFolder(pathToFolder);
        File pathToFile= new File(pathToFolder+"/"+ file.getOriginalFilename());
        writeFile(pathToFile,file);
        Commodity commodity=commodityDao.findOne((Integer.parseInt(id)));
        CommodityPictures commodityPicture= new CommodityPictures();
        commodityPicture.setName(file.getOriginalFilename());
        commodity.getCommodityPicturesList().add(commodityPicture);
        commodityPicture.setCommodity(commodity);
        commodityPictureDao.save(commodityPicture);

    }

    @Transactional
    public void createFolder(File pathToFolder ){
        if(!pathToFolder.exists())
            pathToFolder.mkdirs();

    }

    @Transactional
    public String getExpansion(String fileName){
        return fileName.substring(fileName.lastIndexOf('.'));
    }


    @Transactional
    public void writeFile(File PathToFile, MultipartFile file) {
        try (OutputStream fos = new FileOutputStream(PathToFile); BufferedOutputStream bos = new BufferedOutputStream(fos)) {
            bos.write(file.getBytes(), 0, file.getBytes().length);
            bos.flush();
        } catch (IOException e) {

        }
    }


    @Override
    public void delete(int id) {
        commodityPictureDao.delete(id);
    }

    @Override
    public CommodityPictures findOneById(int id) {
        return commodityPictureDao.findOne(id);
    }

    @Override
    public List<CommodityPictures> findAllUsers() {
        return commodityPictureDao.findAll();
    }
}
