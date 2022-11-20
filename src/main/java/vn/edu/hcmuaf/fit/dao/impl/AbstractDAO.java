package vn.edu.hcmuaf.fit.dao.impl;

import lombok.Data;
import lombok.experimental.SuperBuilder;
import vn.edu.hcmuaf.fit.dao.GenericDAO;
import vn.edu.hcmuaf.fit.db.JDBiConnector;

import java.util.List;
import java.util.Map;

@Data
public class AbstractDAO<T> implements GenericDAO<T> {

    void insert(String sql, Map<String, Object> o) {

        update(sql, o);

    }

    void insert(String sql) {

        insert(sql, null);

    }

    void update(String sql, Map<String, Object> o) {

        new JDBiConnector().get().withHandle(handle -> {
            return handle.createUpdate(sql).bindMap(o).execute();
        });


    }

    void delete(String sql, Map<String, Object> o) {

        update(sql, o);

    }

    List<T> findAll(String sql, Class<T> t, Map<String, Object> o) {


        return (List<T>) new JDBiConnector().get().withHandle(handle -> {
            return handle.createQuery(sql).bindMap(o).mapTo(t).list();
        });

    }


    int count() {
        return 0;
    }


}
