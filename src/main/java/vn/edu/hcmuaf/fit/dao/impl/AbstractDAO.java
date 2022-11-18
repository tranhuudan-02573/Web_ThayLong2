package vn.edu.hcmuaf.fit.dao.impl;

import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.result.ResultBearing;
import vn.edu.hcmuaf.fit.db.JDBiConnector;

import java.sql.*;
import java.util.List;
import java.util.Map;

public class AbstractDAO<T> {

    void insert(String sql, Map<String, Object> o ){

      update(sql,o);

    }
    void insert(String sql ){

        insert(sql,null);

    }

    void update(String sql, Map<String, Object> o ){

        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate(sql).bindMap(o).execute();
        });


    }

    void delete(String sql, Map<String, Object> o ){

        update(sql,o);

    }
    
     List<T> findAll(String sql, Class<T> t, Map<String, Object> o ){


        return (List<T>) JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery(sql).bindMap(o).mapToBean(t).list();
        });

    }
    List<T> findAll(String sql, Class<T> t){


        return (List<T>) JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery(sql).mapToBean(t).list();
        });

    }


    int count(){
        return 0;
    }
    private void setParameter(PreparedStatement statement, Object... parameters) {
        try {
            for (int i = 1; i <= parameters.length; i++) {
                Object parameter = parameters[i];
                if (parameter instanceof Long) {
                    statement.setLong(i, (Long) parameter);
                } else if (parameter instanceof String) {
                    statement.setString(i, (String) parameter);
                } else if (parameter instanceof Integer) {
                    statement.setInt(i, (Integer) parameter);
                } else if (parameter instanceof Timestamp) {
                    statement.setTimestamp(i, (Timestamp) parameter);
                } else if (parameter instanceof Double) {
                    statement.setDouble(i, (Double) parameter);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }



}
