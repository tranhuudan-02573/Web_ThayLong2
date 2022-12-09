package vn.edu.hcmuaf.fit.service.impl;

import vn.edu.hcmuaf.fit.dao.impl.user.UserDAO;
import vn.edu.hcmuaf.fit.model.user.User;

import javax.annotation.ManagedBean;
import javax.inject.Inject;
import java.util.HashSet;
import java.util.List;
@ManagedBean
public class UserService {
//    @Inject
    UserDAO userDao = new UserDAO("users");

    //    boolean register(String name, String email, String phone,String address,String pass, String confirm){}

    public User save(User u) {

        int id = userDao.insertUser(u);

        if (u.getPermissionId() == null) u.setPermissionId(1);

        return userDao.getUserById(id);
    }

    public User update(User u) {

        userDao.update(u);

        return userDao.getUserById(u.getId());
    }

    public void delete(User u) {


        userDao.deleteCart(u);

        userDao.delete(u);
    }

    public List<User> getAll() {

        return userDao.getAll();

    }

    public User checkLogin(String username, String pass) {
        return userDao.checkLogin(username, pass);
    }

}
