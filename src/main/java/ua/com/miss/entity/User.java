package ua.com.miss.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@NamedQueries({
        @NamedQuery(name = "User.findUserByLogin", query = "SELECT u FROM User u where u.email LIKE :login OR u.phone LIKE :login")
})
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int id;
    @Column
    private String name;
    @Column
    private String secondname;
    @Column
    private String email;
    @Column
    private String phone;
    @Column
    private String password;
    @Transient
    private String passwordConfirm;
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private List<Order>commodityList;

    public User() {
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

    public String getSecondname() {
        return secondname;
    }

    public void setSecondname(String secondname) {
        this.secondname = secondname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

    public List<Order> getCommodityList() {
        return commodityList;
    }

    public void setCommodityList(List<Order> commodityList) {
        this.commodityList = commodityList;
    }
}
