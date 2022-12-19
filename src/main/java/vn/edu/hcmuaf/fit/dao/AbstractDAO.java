package vn.edu.hcmuaf.fit.dao;

import org.jdbi.v3.core.mapper.reflect.BeanMapper;
import org.jdbi.v3.core.result.ResultBearing;
import org.jdbi.v3.core.result.RowView;
import org.jdbi.v3.core.statement.Query;
import org.jdbi.v3.core.statement.Update;
import vn.edu.hcmuaf.fit.dao.GenericDAO;
import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.user.*;
import vn.edu.hcmuaf.fit.model.phone.Cap;
import vn.edu.hcmuaf.fit.model.order.Code;
import vn.edu.hcmuaf.fit.model.order.Order;
import vn.edu.hcmuaf.fit.model.order.OrderDetail;
import vn.edu.hcmuaf.fit.model.phone.*;
import vn.edu.hcmuaf.fit.model.phone.Spec;
import vn.edu.hcmuaf.fit.model.phone.SpecType;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import static java.util.stream.Collectors.toList;

public class AbstractDAO<T> implements GenericDAO<T> {
    protected String table;

    public AbstractDAO(String table) {
        this.table = table;
    }

    public Optional<T> getCustom(String sql, Class<T> t) {
        String q = "select * from <TABLE> where 0=0  ";
        return JDBiConnector.get().withHandle(handle -> {
            Query query = handle.createQuery(q).define("TABLE", this.table);
            return query.mapToBean(t).stream().findFirst();
        });
    }

    @Override
    public List<T> list(String sql, Class<T> t, T t2, Integer num) {

        String q = "select * from <TABLE> where 0=0 " + sql;
        if (num != null) q += " limit " + num;
        String finalQ = q;
        return JDBiConnector.get().withHandle(handle -> {
            Query query = handle.createQuery(finalQ).define("TABLE", this.table);
            if (t2 == null) return query.mapToBean(t).list();
            else return query.bindBean("t", t2).mapToBean(t).list();
        });
    }

    public int countById(String sql) {
        String q = "select count(id) " + "from <TABLE>" + " where 0 =0 " + sql;
        return (int) JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery(q).define("TABLE", this.table).mapTo(int.class).one();
        });
    }

    public int count(String count, String sql) {
        String q = "select count(" + count + ")" + "from <TABLE>" + " where 0 =0" + sql;
        return (int) JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery(q).define("TABLE", this.table).mapTo(int.class).one();
        });
    }


    @Override
    public Optional<T> get(String sql, Class<T> t, T t2) {
        String q = "select * from <TABLE> where 0=0 " + sql;
        return JDBiConnector.get().withHandle(handle -> {
            Query query = handle.createQuery(q).define("TABLE", this.table);
            if (t2 == null) return query.mapToBean(t).findOne();
            else return query.bindBean("t", t2).mapToBean(t).findOne();
        });
    }


    @Override
    public int insertWithId(String sql, T t) {
        return JDBiConnector.get().withHandle(handle -> {
            ResultBearing rb = handle.createUpdate(sql).bindBean("t", t)
                    .executeAndReturnGeneratedKeys("id");
            Object id = rb.mapToMap().findOnly().get("generated_key");
            return ((BigInteger) id).intValue();
        });
    }

    @Override
    public void insert(String sql, T t) {
        JDBiConnector.get().useHandle(handle -> {
            Update u = handle.createUpdate(sql);
            if (t == null) u.execute();
            else u.bindBean("t", t)
                    .execute();
        });
    }

    @Override
    public void update(String sql, T t) {
        JDBiConnector.get().useHandle(handle -> {
            Update u = handle.createUpdate(sql);
            if (t == null) u.execute();
            else u.bindBean("t", t)
                    .execute();
        });
    }


    @Override
    public void delete(String sql, T t) {
        update(sql, t);
    }

    public static void main(String[] args) {

    }
}
