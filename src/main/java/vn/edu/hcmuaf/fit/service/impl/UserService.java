package vn.edu.hcmuaf.fit.service.impl;

import vn.edu.hcmuaf.fit.dao.impl.user.UserDAO;
import vn.edu.hcmuaf.fit.model.user.User;

import javax.inject.Inject;

public class UserService {
    @Inject
    UserDAO userDao;

    //    boolean register(String name, String email, String phone,String address,String pass, String confirm){}
    public User checkLogin(String username, String pass) {
        return userDao.checkLogin(username, pass);
    }

}
