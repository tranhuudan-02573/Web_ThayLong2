package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.user.UserState;

public class UserStateDAO extends AbstractDAO<UserState> {
    public UserStateDAO( ) {
        super("user_states");
    }

}
