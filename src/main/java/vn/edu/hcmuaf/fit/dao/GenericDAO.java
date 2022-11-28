package vn.edu.hcmuaf.fit.dao;

import org.jdbi.v3.sqlobject.config.RegisterFieldMapper;
import org.skife.jdbi.v2.sqlobject.SqlQuery;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface GenericDAO<T> {

    public abstract List<T> list(String sql,String table, Class<T> t, Map<String, Object> o);

    public abstract T get(String sql, Class<T> t, int id);


    public abstract void insert(String sql,  T o);

    public abstract void update(String sql, Map<String, Object> o);

    public abstract void delete(String sql, int id);
}
