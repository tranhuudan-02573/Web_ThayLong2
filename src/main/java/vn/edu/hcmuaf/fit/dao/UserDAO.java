package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDAO extends  AbstractDAO<User>{
    private static UserDAO install;

    public UserDAO() {
    }

    public static UserDAO getInstall() {
        if(install==null) install= new UserDAO();
        return install;
    }

    public User getUserByUsername(String username){
        try {
            Statement statement= DBConnect.getInstall().get();
            ResultSet rs=statement.executeQuery("select name, password from users where status = 1 and name = '"+username+"'");
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
}
