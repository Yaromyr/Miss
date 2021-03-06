package ua.com.miss.filtes;

import ua.com.miss.entity.Commodity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Yulian Bulbuk on 05.07.2016.
 */
@Entity
@NamedQueries({
        @NamedQuery(name = "Size.findBySize", query = "SELECT s FROM Sizes  s WHERE s.name LIKE :name")
})
public class Sizes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int id;
    @Column
    private String name;
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "commodity_sizes", joinColumns = @JoinColumn(name = "id_size"), inverseJoinColumns = @JoinColumn(name = "id_commodity"))
    private List<Commodity> commodityList;

    public Sizes() {
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
