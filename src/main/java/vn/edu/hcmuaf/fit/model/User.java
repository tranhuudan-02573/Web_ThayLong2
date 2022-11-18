package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;
@Data
public class User {
    private int id;
    private String name;
    private String password;
    private Role l ;

    private Cart cart;
    private String email ;

    public User() {
    }


    public User(String email){
        this.email=email;
    }

    public User( int id, String name, String password) {
        this.name = name;
        this.id = id;
        this.password = password;
    }
}
