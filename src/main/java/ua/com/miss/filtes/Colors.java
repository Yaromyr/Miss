package ua.com.miss.filtes;

import ua.com.miss.entity.Commodity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
@Entity
public class Colors {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int id;
    @Column
    private String name;
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "commodity_colors", joinColumns = @JoinColumn(name = "id_color"), inverseJoinColumns = @JoinColumn(name = "id_commodity"))
    private List<Commodity> commodityList;

    public Colors() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Commodity> getCommodityList() {
        return commodityList;
    }

    public void setCommodityList(List<Commodity> commodityList) {
        this.commodityList = commodityList;
    }

    @Override
    public String toString() {
        return "" + name ;
    }
}
