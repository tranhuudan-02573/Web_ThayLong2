package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Brand;

import java.util.ArrayList;
import java.util.List;

public class BrandDAO extends AbstractDAO<Brand> {

    public BrandDAO() {
        super("brands");

    }

    public BrandDAO(String table) {
        super(table);
    }

    public List<Brand> list(int[] s) {
        List<Brand> rs = new ArrayList<>();

        for (int i : s
        ) {
            rs.add(get(" and id = " + i, Brand.class, null).get());
        }
        return rs;

    }

}
