package vn.edu.hcmuaf.fit.model.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.order.Order;
import vn.edu.hcmuaf.fit.model.phone.Base;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ConfirmationToken implements Serializable {
    private int id;
    private String token;
    private Timestamp created_at;
    private Timestamp expired_at;
    private Timestamp confirmed_at;

    public static boolean saveActiveCode(String code) {
        String sql = "INSERT INTO confirmationtoken(token,created_at,expired_at) " +
                "VALUES('" + code + "',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP + INTERVAL 24 HOUR)";
        try {
            new AbstractDAO<ConfirmationToken>("confirmationtoken").insert(sql, null);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static void delActiveCode(String code) {
        String sql = "DELETE FROM confirmationtoken  WHERE token='" + code + "'";
        new AbstractDAO<ConfirmationToken>("").delete(sql, null);
    }


     public static boolean checkExpired_at(String name) {
        String sql = " and token='" + name+"'";
        ConfirmationToken confirmationToken = new AbstractDAO<ConfirmationToken>("confirmationtoken").get(sql, ConfirmationToken.class, null).get();
        System.out.println(confirmationToken);
        if (confirmationToken.getExpired_at().after(new Timestamp(System.currentTimeMillis()))) return true;
        return false;
    }


}