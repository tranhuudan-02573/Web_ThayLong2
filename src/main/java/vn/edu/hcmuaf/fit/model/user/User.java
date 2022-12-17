package vn.edu.hcmuaf.fit.model.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Base;

import java.io.Serializable;
import java.util.List;
import java.util.StringTokenizer;

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
    private Integer user_stateId;
    private String status;
    private String email;

    private String permission;

    public UserState _userState() {
        return new AbstractDAO<UserState>("user_states").get(" and id=" + this.user_stateId, UserState.class, null);
    }

    public String avatar() {
        StringBuilder rs = new StringBuilder();
        StringTokenizer st = new StringTokenizer(this.name);

        String[] sts = this.name.trim().toUpperCase().split(" ");

        int start = 0;
        if (sts.length > 2) start = sts.length - 3;

        for (int i = start; i < sts.length; i++) {
            rs.append(sts[i].charAt(0));
        }


        return rs.toString();


    }


    public List<Action> _actions() {
        return new AbstractDAO<Action>("permission_action").list(" and userId =" + this.id, Action.class, null, null);
    }


}
