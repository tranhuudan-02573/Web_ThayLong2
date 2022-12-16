package vn.edu.hcmuaf.fit.model.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Base;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User extends Base<User> implements Serializable {
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

    private String permission;


    public List<Action> _actions() {
        return new AbstractDAO<Action>("permission_action").list(" and userId =" + this.id, Action.class, null, null);
    }


}
