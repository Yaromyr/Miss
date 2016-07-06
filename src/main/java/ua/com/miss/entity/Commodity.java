package ua.com.miss.entity;

import ua.com.miss.filtes.Colors;
import ua.com.miss.filtes.Sizes;
import ua.com.miss.filtes.Styles;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Yulian Bulbuk on 02.07.2016.
 */
@Entity
@NamedQueries({
        @NamedQuery(name = "Commodity.findCommodityByCategoryName", query = "SELECT c FROM Commodity c WHERE c.category LIKE :name"),
})
public class Commodity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int id;
    @Column
    private String brand;
    @Column
    private String name;
    @Column
    private int articul;
    @Column
    private String category;
    @Column
    private int rentPrice;
    @Column
    private boolean action;
    @Column
    private int buyPrice;
    @OneToMany(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER, mappedBy = "commodity")
    private List<CommodityPictures> commodityPicturesList;
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "commodity_colors", joinColumns = @JoinColumn(name = "id_commodity"), inverseJoinColumns = @JoinColumn(name = "id_color"))
    private List<Colors> colorsList;
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "commodity_sizes", joinColumns = @JoinColumn(name = "id_commodity"), inverseJoinColumns = @JoinColumn(name = "id_size"))
    private List<Sizes> sizesList;
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "commodity_styles", joinColumns = @JoinColumn(name = "id_commodity"), inverseJoinColumns = @JoinColumn(name = "id_style"))
    private List<Styles> stylesList;
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "user_commodities", joinColumns = @JoinColumn(name = "id_commodity"), inverseJoinColumns = @JoinColumn(name = "id_user"))
    private List<User> userList;

    public Commodity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getArticul() {
        return articul;
    }

    public void setArticul(int articul) {
        this.articul = articul;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getRentPrice() {
        return rentPrice;
    }

    public void setRentPrice(int rentPrice) {
        this.rentPrice = rentPrice;
    }

    public int getBuyPrice() {
        return buyPrice;
    }

    public void setBuyPrice(int buyPrice) {
        this.buyPrice = buyPrice;
    }

    public boolean isAction() {
        return action;
    }

    public void setAction(boolean action) {
        this.action = action;
    }

    public List<CommodityPictures> getCommodityPicturesList() {
        return commodityPicturesList;
    }

    public void setCommodityPicturesList(List<CommodityPictures> commodityPicturesList) {
        this.commodityPicturesList = commodityPicturesList;
    }

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    public List<Colors> getColorsList() {
        return colorsList;
    }

    public void setColorsList(List<Colors> colorsList) {
        this.colorsList = colorsList;
    }

    public List<Sizes> getSizesList() {
        return sizesList;
    }

    public void setSizesList(List<Sizes> sizesList) {
        this.sizesList = sizesList;
    }

    public List<Styles> getStylesList() {
        return stylesList;
    }

    public void setStylesList(List<Styles> stylesList) {
        this.stylesList = stylesList;
    }
}
