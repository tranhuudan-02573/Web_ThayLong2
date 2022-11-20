package vn.edu.hcmuaf.fit.dao.impl;

import org.jdbi.v3.core.mapper.reflect.BeanMapper;
import org.jdbi.v3.core.result.RowView;
import vn.edu.hcmuaf.fit.dao.GenericDAO;
import vn.edu.hcmuaf.fit.dao.IUserDAO;
import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Color;
import vn.edu.hcmuaf.fit.model.Pay;
import vn.edu.hcmuaf.fit.model.Phone;
import vn.edu.hcmuaf.fit.model.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import static java.util.stream.Collectors.toList;

public class UserDAO extends AbstractDAO<User> implements IUserDAO {
    private static UserDAO install;

    public UserDAO() {

    }

    public static UserDAO getInstall() {
        if (install == null) install = new UserDAO();
        return install;
    }

    List<Phone> join() {


        return new JDBiConnector().get().withHandle(handle -> {
                    return handle.createQuery("select phones.id p_id ,phones.name p_name, phones.cap p_cap, phones.price p_price, phones.shortdesc p_shortdesc, phones.status p_status ,phones.thumbnail p_thumbnail, phones.total p_total,phones.`desc` p_desc,phone_color.id c_id,phone_color.name c_name,phone_color.img c_img, phone_color.total c_total from phones inner join phone_color on phone_color.idphone = phones.id\n")
                            .registerRowMapper(BeanMapper.factory(Phone.class, "p"))
                            .registerRowMapper(BeanMapper.factory(Color.class, "c"))
                            .reduceRows((Map<Integer, Phone> map, RowView rowView) -> {
                                Phone phone = map.computeIfAbsent(
                                        rowView.getColumn("p_id", Integer.class),
                                        id -> rowView.getRow(Phone.class));

                                if (rowView.getColumn("c_id", Integer.class) != null) {
                                    phone.addColor(rowView.getRow(Color.class));
                                    phone.setColors(phone.getColors());
                                }
                            })
                            .collect(toList());
                }
        );


    }

    @Override
    public List<Phone> getCartByIdUser(int id) {
        List<Phone> rs = new LinkedList<>();


        return rs;

    }

    @Override
    public List<Phone> getWishListByIdUser(int id) {
        List<Phone> rs = new LinkedList<>();


        return rs;

    }

    @Override
    public List<Pay> getPayByIdUer(int id) {
        List<Pay> rs = new LinkedList<>();

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


    public static void main(String[] args) {
        System.out.println(new UserDAO().join());
    }
}
