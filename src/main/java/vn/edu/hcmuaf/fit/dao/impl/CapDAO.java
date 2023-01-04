package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Cap;

import java.util.ArrayList;
import java.util.List;

public class CapDAO extends AbstractDAO<Cap> {

    public CapDAO() {
        super("caps");

    }

    public CapDAO(String table) {
        super(table);
    }

    public List<Cap> list(int[] s) {
        List<Cap> rs = new ArrayList<>();

        for (int i : s
        ) {
            rs.add(get(" and id = " + i, Cap.class, null).get());
        }
        return rs;

    }

}
