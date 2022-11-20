package vn.edu.hcmuaf.fit.db;

import com.mysql.cj.jdbc.MysqlConnectionPoolDataSource;
import org.apache.commons.dbcp.BasicDataSource;
import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.model.Phone;

import javax.inject.Inject;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;
import java.util.stream.Collectors;

public class JDBiConnector {
    @Inject
    private Jdbi jdbi;

    public JDBiConnector() {

    }


    public Jdbi get() {
        try {

            BasicDataSource ds = new BasicDataSource();
            ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
            ds.setPassword("");
            ds.setUsername("root");
            ds.setMaxIdle(2);
            ds.setMinIdle(2);
            ds.setUrl("jdbc:mysql://localhost:3306/shop_phone");
            Connection cn = ds.getConnection();
            return jdbi = Jdbi.create(cn);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void main(String[] args) {
        List<Phone> list = new JDBiConnector().get().withHandle(handle -> {
            return handle.createQuery("select * from phones where id = :id").bind("id", 2).mapToBean(Phone.class).stream().collect(Collectors.toList());
        });
        System.out.println(list);
    }
}
