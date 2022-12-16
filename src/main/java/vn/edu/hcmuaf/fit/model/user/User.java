package vn.edu.hcmuaf.fit.model.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

@Data
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class User implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String name;
    private String password;
    private String phone;
    private String address;
    private boolean gender;
    private boolean active;
    private String avatar;
    private Integer user_stateId;
    private String status;
    private String email;
    private Integer permissionId;
    private Permission permission;

    public Permission _permission() {

        return new AbstractDAO<Permission>("permissions").get(" and id = " + this.permissionId, Permission.class, null);
    }


    public User(String name, String password, String phone, String email, Integer p) {
        this.name = name;
        this.password = password;
        this.phone = phone;
        this.email = email;
        this.permissionId = p;
    }

}
