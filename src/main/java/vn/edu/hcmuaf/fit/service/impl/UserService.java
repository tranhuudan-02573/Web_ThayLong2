package vn.edu.hcmuaf.fit.service.impl;

import org.mindrot.jbcrypt.BCrypt;
import vn.edu.hcmuaf.fit.dao.impl.user.UserDAO;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.registration.token.ConfirmationToken;
import vn.edu.hcmuaf.fit.registration.token.ConfirmationTokenService;

import javax.annotation.ManagedBean;
import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@ManagedBean
public class UserService {
    //    @Inject
    UserDAO userDao = new UserDAO("users");
    UserService userService = new UserService();
    ConfirmationTokenService confirmationTokenService = new ConfirmationTokenService();
    //    boolean register(String name, String email, String phone,String address,String pass, String confirm){}

    public User save(User u) {

        int id = userDao.insertUser(u);

        if (u.getPermissionId() == null) u.setPermissionId(1);

        return userDao.getUserById(id);
    }

    public String signUpUser(User appUser) {
        boolean userExists = userDao
                .findByEmail(appUser.getEmail()) != null;

        if (userExists) {
            // TODO check of attributes are the same and
            // TODO if email not confirmed send confirmation email.

            throw new IllegalStateException("email already taken");
        }

        String encodedPassword = BCrypt.hashpw(appUser.getPassword(), BCrypt.gensalt(10));

        appUser.setPassword(encodedPassword);

        userService.save(appUser);

        String token = UUID.randomUUID().toString();

        ConfirmationToken confirmationToken = new ConfirmationToken(
                token,
                new Timestamp(System.currentTimeMillis()),
                new Timestamp(System.currentTimeMillis() + 9000),
                appUser
        );

        confirmationTokenService.saveConfirmationToken(
                confirmationToken);

//        TODO: SEND EMAIL

        return token;
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

    public void enableAppUser(String email) {
        userDao.enableUser(email);
    }

    public User loadUserByUsername(String email) {
        return userDao.findByEmail(email);
    }

    public User checkLogin(String username, String pass) {
        return userDao.checkLogin(username, pass);
    }

}
