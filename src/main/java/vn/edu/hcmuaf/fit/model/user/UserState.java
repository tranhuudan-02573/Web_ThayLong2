package vn.edu.hcmuaf.fit.model.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Base;

import java.io.Serializable;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class UserState extends Base<UserState> implements Serializable {
    private String name;
    private String key;

    public List<User> _users() {
        return new AbstractDAO<User>("users").list(" and user_stateId=" + this.id, User.class, null, null, null, null);
    }
}

