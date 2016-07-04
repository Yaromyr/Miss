package ua.com.miss.entity;

import ua.com.miss.enums.Colors;
import ua.com.miss.enums.Sizes;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Yulian Bulbuk on 02.07.2016.
 */
@Entity
@NamedQueries({
        @NamedQuery(name = "Commodity.findCommodityByCategoryName", query = "SELECT c FROM Commodity c WHERE c.category LIKE :name")
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
    private int buyPrice;
    @Column
    private boolean action;
    @Enumerated(EnumType.STRING)
    private Colors colors;
    @Enumerated(EnumType.STRING)
    private Sizes sizes;
    @OneToMany(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER, mappedBy = "commodity")
    private List<CommodityPictures> commodityPicturesList;
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name =  "user_commodities", joinColumns = @JoinColumn(name = "id_commodity"), inverseJoinColumns = @JoinColumn(name = "id_user"))
    private List<User>userList;

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

    public Colors getColors() {
        return colors;
    }

    public void setColors(Colors colors) {
        this.colors = colors;
    }

    public Sizes getSizes() {
        return sizes;
    }

    public void setSizes(Sizes sizes) {
        this.sizes = sizes;
    }

    public List<CommodityPictures> getCommodityPicturesList() {
        return commodityPicturesList;
    }

    public void setCommodityPicturesList(List<CommodityPictures> commodityPicturesList) {
        this.commodityPicturesList = commodityPicturesList;
    }
}
