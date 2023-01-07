package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Type;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class TypeDAO extends AbstractDAO<Type> {

    public TypeDAO() {
        super("types");

    }

    public List<Type> list(int[] s) {
        List<Type> rs = new ArrayList<>();

        for (int i : s
        ) {
            rs.add(get(" and id = " + i, Type.class, null).get());
        }
        return rs;

    }

    public int insertType(Type pp) {

        pp.setCreated_at(new Timestamp(System.currentTimeMillis()));
        pp.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId("insert into types (name,created_at,updated_at)" +
                        " values(:t.name,:t.created_at,:t.updated_at)",
                pp);
    }

    public void deleteType(Type c) {
        delete("delete from types  where id = :t.id", c);
    }


    public void updateType(Type c) {
        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update types set name = :t.name,updated_at = :t.updated_at where id = :t.id", c);


    }

}
