package vn.edu.hcmuaf.fit.model.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.mindrot.jbcrypt.BCrypt;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Base;

import java.io.Serializable;
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

    public UserState _userState() {
        return new AbstractDAO<UserState>("user_states").get(" and id=" + this.user_stateId, UserState.class, null);
    }


    public List<Action> _actions() {
        return new AbstractDAO<Action>("permission_action").list(" and userId =" + this.id, Action.class, null, null);
    }
    public static User findAccount(String email, String pass) {
        User user = getUser(email);
        if (user == null || !(email.equals(user.getEmail()) && BCrypt.checkpw(pass, user.getPassword())))
            return null;
        return user;
    }

    public static boolean hasEmail(String email){
        return getUser(email)!=null;
    }

    public static User getUser(String email){
        String sql = " and email = '"+ email +"'";
        List<User> users = new AbstractDAO<User>("users").list(sql, User.class, null, null);
        if (users.size() != 1) return null;
        return users.get(0);
    }
    public static void main(String[] args) {


//        System.out.println(new AbstractDAO<User>("users").list(" and email = '' ", User.class, null, null).size());
        System.out.println(findAccount("camapcon@gmail.com","1"));


    }


}
