package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class User extends BaseModel {
    private String name;
    private String password;
    private String role;

    private Cart cart;
    private String email;

    public User() {
    }


}
