package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.constant.Variable;
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

    public void active(String mail) {
        update(" update users set active =true where email='" + mail + "'", null);
    }

    public int save(User u) {
        u.setCreated_at(new Timestamp(System.currentTimeMillis()));
        u.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        u.setPermission(Variable.Global.USER.toString());
        return insertWithId(" insert into users(phone,password,`name`,address,gender,email,created_at,updated_at,active,permission)" +
                " values(:t.phone,:t.password,:t.name,:t.address,false,:t.email,:t.created_at,:t.updated_at,0,:t.permission)  ", u);
    }

    public User findAccount(String email, String pass) {
        return get(" and email='" + email + "' and password='" + pass + "'", User.class, null).get();
    }

    public boolean hasEmail(String email) {
        return get(" and email='" + email + "'", User.class, null).orElse(null) != null;
    }

    public boolean hasPhone(String phone) {
        return get(" and phone=" + phone, User.class, null).orElse(null) != null;
    }


}

