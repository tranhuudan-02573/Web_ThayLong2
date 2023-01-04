package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Type;

import java.util.ArrayList;
import java.util.List;

public class TypeDAO extends AbstractDAO<Type> {

    public TypeDAO() {
        super("types");

    }

    public TypeDAO(String table) {
        super(table);
    }

    public List<Type> list(int[] s) {
        List<Type> rs = new ArrayList<>();

        for (int i : s
        ) {
            rs.add(get(" and id = " + i, Type.class, null).get());
        }
        return rs;

    }

}
