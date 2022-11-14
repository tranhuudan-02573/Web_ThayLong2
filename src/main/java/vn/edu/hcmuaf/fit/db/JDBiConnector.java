package vn.edu.hcmuaf.fit.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.model.Phone;

import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;

public class JDBiConnector {
    private static Jdbi jdbi;

    private JDBiConnector() {

    }

    public static Jdbi get() {
        if (jdbi == null) create();
        return jdbi;
    }

    private static void create() {
        try {
            MysqlDataSource dataSource = new MysqlDataSource();
            dataSource.setURL("jdbc:mysql://" + DBProperties.getDBHost() + ":" + DBProperties.getDBPort() + "/" + DBProperties.getDBDatabaseName());
            dataSource.setUser(DBProperties.getDBUsername());
            dataSource.setPassword(DBProperties.getDBPassword());
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
            jdbi = Jdbi.create(dataSource);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void main(String[] args) {
        List<Phone> list = JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from products").mapToBean(Phone.class).stream().collect(Collectors.toList());
        });
        System.out.println(list);
    }
}
