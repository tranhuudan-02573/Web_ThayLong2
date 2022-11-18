package vn.edu.hcmuaf.fit.dao.impl;

import org.jdbi.v3.core.mapper.JoinRowMapper;
import org.jdbi.v3.core.mapper.reflect.BeanMapper;
import org.jdbi.v3.core.result.RowView;
import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Role;
import vn.edu.hcmuaf.fit.model.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import static java.util.stream.Collectors.toList;

public class UserDAO extends AbstractDAO<User> {
    private static UserDAO install;

    public UserDAO() {

    }

    public static UserDAO getInstall() {
        if (install == null) install = new UserDAO();
        return install;
    }

    List<User> join() {



        return  JDBiConnector.get().withHandle(handle -> {
                    return handle.createQuery("select users.id c_id,  name c_name, password c_password, roles.id p_id, code p_code\n" +
                                    "from users\n" +
                                    "inner join roles on users.idrole= roles.id ;")
                            .registerRowMapper(BeanMapper.factory(User.class, "c"))
                            .registerRowMapper(BeanMapper.factory(Role.class, "p"))
                            .reduceRows((Map<Integer, User> map, RowView rowView) -> {
                                User contact = map.computeIfAbsent(
                                        rowView.getColumn("c_id", Integer.class),
                                        id -> rowView.getRow(User.class));

                                if (rowView.getColumn("p_id", Integer.class) != null) {
                                    contact.addRole(rowView.getRow(Role.class));
                                }
                            })
                            .collect(toList());
                }
                );
//
//            handle.createQuery("select users.id c_id,  name, password, roles.id p_id, code\n" +
//                            "from users\n" +
//                            "inner join roles on users.idrole= roles.id ;")
//                    .reduceResultSet(new LinkedHashMap<Integer, User>(),
//                            (acc, resultSet, ctx) -> {
//                                int userid = resultSet.getInt("c_id");
//                                User user;
//                                if (acc.containsKey(userid)) {
//                                    user = acc.get(userid);
//                                } else {
//                                    user = new User();
//                                    acc.put(userid,user);
//                                    user.setId(userid);
//                                    user.setName(resultSet.getString("name"));
//                                    user.setPassword(resultSet.getString("password"));
//                                }
//
//                                int roleid = resultSet.getInt("p_id");
//                                if (!resultSet.wasNull()) {
//                                    Role role = new Role();
//                                    role.setId(roleid);
//                                    role.setCode(resultSet.getString("code"));
//                                    user.addRole(role);
//                                }
//
//                                return acc;
//                            })
//                    .values()
//                    .stream()
//                    .collect(toList());


        }



//    void map(){
//        Multimap<User, Role> joined = HashMultimap.create();
//        h.createQuery("SELECT * FROM \"user\" NATURAL JOIN author NATURAL JOIN article")
//                .map(JoinRowMapper.forTypes(User.class, Article.class))
//                .forEach(jr -> joined.put(jr.get(User.class), jr.get(Article.class)));
//    }

    public User getUserByUsername(String username){


        try {
            PreparedStatement statement= DBConnect.getInstall().get("select name, password from users where status = 1 and name = '"+username+"'");
            ResultSet rs=statement.executeQuery();
//            kiem tra lấy dc bao nhieu dong dư lieu
            rs.last();
            int count = rs.getRow();
            if(count==0) return null;
            if(count>1) throw new SQLException("SQL Query Error");
            rs.first();
            User user= new User();
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
