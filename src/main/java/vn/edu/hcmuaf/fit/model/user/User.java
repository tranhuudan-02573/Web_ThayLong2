package vn.edu.hcmuaf.fit.model.user;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

@Data
public class User implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String name;
    private String password;
    private String phone;
    private String address;
    private boolean gender;
    private int user_stateId;
    private UserState userState;
    private String email;
    private int permissionId;
    private Permission permission;
    private Set<Cart> carts = new HashSet<>();

    public void addCart(Cart c) {
        carts.add(c);
    }

    public User() {
    }


}
