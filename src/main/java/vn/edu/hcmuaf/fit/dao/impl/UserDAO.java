package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.user.User;

import java.sql.Timestamp;

public class UserDAO extends AbstractDAO<User> {
    public UserDAO() {
        super("users");
    }

    public boolean update(User u) {

        u.setUpdated_at(new Timestamp(System.currentTimeMillis()));

        return update(" update users set phone=:t.phone,name=:t.name,address=:t.address,gender=:t.gender,email=:t.email,updated_at=:t.updated_at where id=" + u.getId(), u);
    }

}

