package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Promot;

import java.util.ArrayList;
import java.util.List;

public class PromotDAO extends AbstractDAO<Promot> {

    public PromotDAO() {
        super("promots");

    }

    public PromotDAO(String table) {
        super(table);
    }

    public List<Promot> list(int[] s) {
        List<Promot> rs = new ArrayList<>();

        for (int i : s
        ) {
            rs.add(get(" and id = " + i, Promot.class, null).get());
        }
        return rs;

    }

}
