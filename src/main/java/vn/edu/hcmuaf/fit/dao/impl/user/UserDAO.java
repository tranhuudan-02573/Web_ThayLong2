package vn.edu.hcmuaf.fit.dao.impl.user;

import vn.edu.hcmuaf.fit.dao.GenericDAO;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.helper.HashPass;
import vn.edu.hcmuaf.fit.model.order.Order;
import vn.edu.hcmuaf.fit.model.phone.*;
import vn.edu.hcmuaf.fit.model.user.User;

import javax.annotation.ManagedBean;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.*;
@ManagedBean
public class UserDAO extends AbstractDAO<User> implements GenericDAO<User> {
    public void deleteCart(User c){

        delete("delete from cart where userId = :t.id",c);

    }

    public void deleteReview(User u){
        delete("delete from phone_review where userId =:t.id",u);
    }
//    List<Phone> join() {
//
//
//        return new JDBiConnector().get().withHandle(handle -> {
//                    return handle.createQuery("select phones.id p_id ,phones.name p_name, phones.cap p_cap, phones.price p_price, phones.shortdesc p_shortdesc, phones.status p_status ,phones.thumbnail p_thumbnail, phones.total p_total,phones.`desc` p_desc,phone_color.id c_id,phone_color.name c_name,phone_color.img c_img, phone_color.total c_total from phones inner join phone_color on phone_color.idphone = phones.id\n")
//                            .registerRowMapper(BeanMapper.factory(Phone.class, "p"))
//                            .registerRowMapper(BeanMapper.factory(Color.class, "c"))
//                            .reduceRows((Map<Integer, Phone> map, RowView rowView) -> {
//                                Phone phone = map.computeIfAbsent(
//                                        rowView.getColumn("p_id", Integer.class),
//                                        id -> rowView.getRow(Phone.class));
//
//                                if (rowView.getColumn("c_id", Integer.class) != null) {
//                                    phone.getColorList().add(rowView.getRow(Color.class));
//                                    phone.setColorList(phone.getColorList());
//                                }
//                            })
//                            .collect(toList());
//                }
//        );
//
//
//    }


    public User getUserById(int id) {

        Map<String, Object> o = new HashMap<>();
        o.put("id", id);

        List<User> users = joinUser(" and u.id = :id", User.class, o);
        if (users.size() > 1 || users.isEmpty()) return null;

        return users.get(0);

    }

    public List<Phone> getCartByIdUser(int id) {
        List<Phone> rs = new LinkedList<>();


        return rs;

    }

    public List<Phone> getWishListByIdUser(int id) {
        List<Phone> rs = new LinkedList<>();


        return rs;

    }


    public int insertUser(User user) {
        user.setCreated_at(new Timestamp(System.currentTimeMillis()));
        user.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId("insert into users " +
                        "(`phone`,password,`name`,address,gender,email,avatar,active,user_stateId,permissionId,created_at,updated_at) " +
                        "values (:t.phone,:t.password,:t.name,:t.address,:t.gender,:t.email,:t.avatar,:t.active,:t.user_stateId,:t.permissionId,:t.created_at," +
                        ":t.updated_at)",
                user);

    }


    public User checkLogin(String username, String pass) {
        String sql = "select * from users where name = :name";
        Map<String, Object> o = new HashMap<>();
        o.put("name", "dan");
        List<User> users = list(sql, "users", User.class, o);
        User user = users.get(0);
        if (users.size() != 1 || !user.getPassword().equals(new HashPass().hashPassword(pass)) || !username.equals(user.getName()))
            return null;
        return user;

    }

    public List<Order> getOrderByIdUer(int id) {
        List<Order> rs = new LinkedList<>();

        return rs;


    }

    public User getUserByUP(String username, String password) {


        try {
            PreparedStatement statement = DBConnect.getInstall().get("select name, password from users where status = 1 and name = '" + username + "'");
            ResultSet rs = statement.executeQuery();
//            kiem tra lấy dc bao nhieu dong dư lieu
            rs.last();
            int count = rs.getRow();
            if (count == 0) return null;
            if (count > 1) throw new SQLException("SQL Query Error");
            rs.first();
            User user = new User();
//            user.setUsername(rs.getString(1));
//            user.setPassword(rs.getString(2));
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void update(User u) {

        u.setUpdated_at(new Timestamp(System.currentTimeMillis()));

        update("update users set phone =:t.phone,password=:t.password,name=:t.name," +
                "address=:t.address,gender=:t.gender,email=:t.email," +
                "avatar=:t.avatar,updated_at=:t.updated_at,active=:t.active," +
                "status=:t.status,permissionId=:t.permissionId" +
                "  where id = :t.id", u);


    }

    public List<User> getAll() {
        return joinUser("", User.class, null);
    }

    public void delete(User u) {

        delete("delete from users where id =:t.id", u);
    }

    public static void main(String[] args) {
        User user = new User();
        user.setGender(true);
        user.setAddress("Dasd");
        user.setPermissionId(1);
        user.setPhone("0377162712");
//        System.out.println(new UserDAO().insertUser(user));
        System.out.println(new UserDAO().joinUser("", User.class, null));
    }
}
