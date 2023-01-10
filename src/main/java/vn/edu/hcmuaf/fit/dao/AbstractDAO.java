package vn.edu.hcmuaf.fit.dao;

import org.jdbi.v3.core.statement.Query;
import org.jdbi.v3.core.statement.Update;
import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.db.JDBiConnector;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

public class AbstractDAO<T> {
    protected String table;
    protected final String SELECT_ALL_PHONE = "select distinct phones.* " +
            "from phones  \n" +
            "LEFT JOIN types  on phones.typeId = types.id\n" +
            "LEFT JOIN sales \ton phones.saleId = sales.id\n" +
            "LEFT JOIN phone_states  on phones.phone_stateId = phone_states.id\n" +
            "LEFT JOIN models  on phones.modelId = models.id\n" +
            "LEFT JOIN brands on phones.brandId = brands.id\n" +
            "LEFT JOIN phone_promot  on phones.id = phone_promot.phoneId\n" +
            "LEFT JOIN phone_color  on phones.id = phone_color.phoneId\n" +
            "LEFT JOIN images  on phones.id = images.phoneId \n" +
            "left join phone_spec  on phones.id = phone_spec.phoneId\n" +
            "left join phone_cap  on phones.id = phone_cap.phoneId where true ";


    public AbstractDAO(String table) {
        this.table = table;
    }


    //
//
    public List<?> listValue(String value, String sql, Class<?> t) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select distinct " + value + " from " + this.table + " where 1=1 " + sql).define("TABLE", this.table).mapTo(t).list();
        });
    }


    public List<T> list(String sql, Class<T> t, T t2, Integer num, Map<String, List<Object>> map, Variable.Global gl) {

        String j = "";
        if (gl != null) {
            if (gl.equals(Variable.Global.JOIN_PHONE)) {
                j = " LEFT JOIN types  on phones.typeId = types.id LEFT JOIN sales on phones.saleId = sales.id  LEFT JOIN phone_states  on phones.phone_stateId = phone_states.id LEFT JOIN models  on phones.modelId = models.id LEFT JOIN brands on phones.brandId = brands.id LEFT JOIN phone_promot  on phones.id = phone_promot.phoneId LEFT JOIN phone_color  on phones.id = phone_color.phoneId LEFT JOIN images  on phones.id = images.phoneId left join phone_spec  on phones.id = phone_spec.phoneId left join phone_cap  on phones.id = phone_cap.phoneId";
            }
            if (gl.equals(Variable.Global.JOIN_ORDER)) {
            }
            if (gl.equals(Variable.Global.JOIN_USER)) {
            }
        }


        String q = "select distinct " + this.table + ".* from <TABLE>" + j + " where true " + sql;

        if (num != null) q += " limit " + num;
        String finalQ = q;
        return JDBiConnector.get().withHandle(handle -> {
            Query query = handle.createQuery(finalQ).define("TABLE", this.table);
            if (map != null && !map.isEmpty()) {
                List<String> keys = new ArrayList<>(map.keySet());
                for (String key : keys
                ) {
                    query.bindList(key, map.get(key));
                }
            }
            if (t2 != null) query.bindBean("t", t2);

            return query.mapToBean(t).list();
        });
    }

    public List<T> list0(String sql, Class<T> t, T t2, Map<String, List<Object>> map, Variable.Global gl, String orderby, Integer limit, Integer offset) {

        String j = "";
        if (gl != null) {
            if (gl.equals(Variable.Global.JOIN_PHONE)) {
                j = " LEFT JOIN types  on phones.typeId = types.id LEFT JOIN sales on phones.saleId = sales.id  LEFT JOIN phone_states  on phones.phone_stateId = phone_states.id LEFT JOIN models  on phones.modelId = models.id LEFT JOIN brands on phones.brandId = brands.id LEFT JOIN phone_promot  on phones.id = phone_promot.phoneId LEFT JOIN phone_color  on phones.id = phone_color.phoneId LEFT JOIN images  on phones.id = images.phoneId left join phone_spec  on phones.id = phone_spec.phoneId left join phone_cap  on phones.id = phone_cap.phoneId";
            }
            if (gl.equals(Variable.Global.JOIN_ORDER)) {
            }
            if (gl.equals(Variable.Global.JOIN_USER)) {
            }
            if (gl.equals(Variable.Global.JOIN_PHONE_REVIEW)) {
                j = "cross join phone_review on reviews.id  = phone_review.commentId";
            }
        }


        String q = "select distinct " + this.table + ".* from <TABLE>" + j + " where true " + sql;


        if (orderby != null) q += " order by " + orderby;
        if (limit != null && offset != null) {
            q += " limit " + limit + " offset " + offset;
        }
        String finalQ = q;
        return JDBiConnector.get().withHandle(handle -> {
            Query query = handle.createQuery(finalQ).define("TABLE", this.table);
            if (map != null && !map.isEmpty()) {
                List<String> keys = new ArrayList<>(map.keySet());
                for (String key : keys
                ) {
                    query.bindList(key, map.get(key));
                }
            }
            if (t2 != null) query.bindBean("t", t2);

            return query.mapToBean(t).list();
        });
    }

    public List<T> list1(String select, String sql, Class<T> t, T t2, Map<String, List<Object>> map, Variable.Global gl, String orderby, Integer limit, Integer offset) {

        String j = "";
        if (gl != null) {
            if (gl.equals(Variable.Global.JOIN_PHONE)) {
                j = " LEFT JOIN types  on phones.typeId = types.id LEFT JOIN sales on phones.saleId = sales.id  LEFT JOIN phone_states  on phones.phone_stateId = phone_states.id LEFT JOIN models  on phones.modelId = models.id LEFT JOIN brands on phones.brandId = brands.id LEFT JOIN phone_promot  on phones.id = phone_promot.phoneId LEFT JOIN phone_color  on phones.id = phone_color.phoneId LEFT JOIN images  on phones.id = images.phoneId left join phone_spec  on phones.id = phone_spec.phoneId left join phone_cap  on phones.id = phone_cap.phoneId";
            }
            if (gl.equals(Variable.Global.JOIN_ORDER)) {
            }
            if (gl.equals(Variable.Global.JOIN_USER)) {
            }
            if (gl.equals(Variable.Global.JOIN_PHONE_REVIEW)) {
                j = " cross join phone_review on reviews.id  = phone_review.commentId ";
            }
        }


        String q = "select distinct " + select + this.table + ".* from <TABLE>" + j + " where true " + sql;


        if (orderby != null) q += " order by " + orderby;
        if (limit != null && offset != null) {
            q += " limit " + limit + " offset " + offset;
        }
        String finalQ = q;
        return JDBiConnector.get().withHandle(handle -> {
            Query query = handle.createQuery(finalQ).define("TABLE", this.table);
            if (map != null && !map.isEmpty()) {
                List<String> keys = new ArrayList<>(map.keySet());
                for (String key : keys
                ) {
                    query.bindList(key, map.get(key));
                }
            }
            if (t2 != null) query.bindBean("t", t2);

            return query.mapToBean(t).list();
        });
    }

    public String getCustom(String custom, String sql) {
        String q = "select " + custom + " from <TABLE> " + "where 0=0 " + sql;
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery(q).define("TABLE", this.table).mapTo(String.class).one();
        });
    }

    public int count(String count, String sql) {
        String q = "select count(" + count + ")" + " from <TABLE>" + " where 0=0 " + sql;
        return (int) JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery(q).define("TABLE", this.table).mapTo(int.class).one();
        });
    }

    public int max(String max, String sql) {
        String q = "select max(" + max + ")" + " from <TABLE>" + " where 0=0 " + sql;
        return (int) JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery(q).define("TABLE", this.table).mapTo(int.class).one();
        });
    }

    public Optional<T> get(String sql, Class<T> t, T t2) {
        String q = "select distinct " + this.table + ".* from <TABLE> where 0=0 " + sql;
        return JDBiConnector.get().withHandle(handle -> {
            Query query = handle.createQuery(q).define("TABLE", this.table);
            if (t2 == null) return query.mapToBean(t).findOne();
            else return query.bindBean("t", t2).mapToBean(t).findOne();
        });
    }

    public Optional<T> get(String sql, String join, Class<T> t, T t2) {
        String q = "select distinct " + this.table + ".* from <TABLE> " + join + " where 0=0 " + sql;
        return JDBiConnector.get().withHandle(handle -> {
            Query query = handle.createQuery(q).define("TABLE", this.table);
            if (t2 == null) return query.mapToBean(t).findOne();
            else return query.bindBean("t", t2).mapToBean(t).findOne();
        });
    }

    public Optional<T> get(String sql, Class<T> t, T t2, Variable.Global gl) {
        String j = "";
        if (gl != null) {
            if (gl.equals(Variable.Global.JOIN_PHONE)) {
                j = " LEFT JOIN types  on phones.typeId = types.id LEFT JOIN sales on phones.saleId = sales.id  LEFT JOIN phone_states  on phones.phone_stateId = phone_states.id LEFT JOIN models  on phones.modelId = models.id LEFT JOIN brands on phones.brandId = brands.id LEFT JOIN phone_promot  on phones.id = phone_promot.phoneId LEFT JOIN phone_color  on phones.id = phone_color.phoneId LEFT JOIN images  on phones.id = images.phoneId left join phone_spec  on phones.id = phone_spec.phoneId left join phone_cap  on phones.id = phone_cap.phoneId";
            }
            if (gl.equals(Variable.Global.JOIN_PHONE_CAP)) {
                j = " LEFT JOIN phone_cap  on phones.id = phone_cap.phoneId ";
            }
            if (gl.equals(Variable.Global.JOIN_USER)) {
            }
        }
        String q = "select distinct " + this.table + ".* from <TABLE>" + j + " where true " + sql;
        return JDBiConnector.get().withHandle(handle -> {
            Query query = handle.createQuery(q).define("TABLE", this.table);
            if (t2 == null) return query.mapToBean(t).findOne();
            else return query.bindBean("t", t2).mapToBean(t).findOne();
        });
    }

    public int insertWithId(String sql, T t) {
        return JDBiConnector.get().withHandle(handle -> {
            Update rb = handle.createUpdate(sql);
            if (t != null) rb.bindBean("t", t).executeAndReturnGeneratedKeys("id");
            Object id = rb.executeAndReturnGeneratedKeys("id").mapToMap().findOnly().get("generated_key");
            return ((BigInteger) id).intValue();
        });
    }


    public boolean insert(String sql, T t) {
        return update(sql, t);
    }


    public boolean update(String sql, T t) {
        int i = JDBiConnector.get().withHandle(handle -> {
            Update u = handle.createUpdate(sql);
            if (t != null)
                u.bindBean("t", t);
            return u.execute();
        });
        return i != 0;
    }


    public boolean delete(String sql, T t) {
        return update(sql, t);

    }

    public List<?> listCustom(String sql, Class<T> t, Integer num, Map<String, List<Object>> map, Class<?> v) {
        String s = SELECT_ALL_PHONE + sql;
        if (num != null) s += " limit " + num;
        String finalS = s;
        return JDBiConnector.get().withHandle(handle -> {
            Query query = handle.createQuery(finalS);

            if (!map.isEmpty()) {
                List<String> keys = new ArrayList<>(map.keySet());
                for (String key : keys
                ) {
                    query.bindList(key, map.get(key));
                }
            }
            if (v != null) {
                return query.mapTo(v).list();
            } else
                return query.mapToBean(t).list();

        });


    }


}
