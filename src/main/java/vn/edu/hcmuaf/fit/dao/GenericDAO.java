package vn.edu.hcmuaf.fit.dao;

import org.skife.jdbi.v2.sqlobject.BindBean;
import org.skife.jdbi.v2.sqlobject.GetGeneratedKeys;
import org.skife.jdbi.v2.sqlobject.SqlQuery;
import org.skife.jdbi.v2.sqlobject.SqlUpdate;

import java.util.List;
import java.util.stream.Stream;

public interface GenericDAO<T> {

    @SqlUpdate("insert into <table> <columns> values <values>")
//    @GetGeneratedKeys("id")
    void insert(@BindBean T t);
    @SqlQuery("select <columns> from <tables>")


//    @RegisterRowMapper(T.class)
    Stream<T> getNamesAsIterable(String tables, List<String> columns);

}
