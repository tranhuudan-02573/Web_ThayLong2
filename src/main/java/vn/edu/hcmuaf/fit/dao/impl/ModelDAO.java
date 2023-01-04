package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Model;

import java.util.ArrayList;
import java.util.List;

public class ModelDAO extends AbstractDAO<Model> {

    public ModelDAO() {
        super("models");

    }

    public List<Model> list(int[] s) {
        List<Model> rs = new ArrayList<>();

        for (int i : s
        ) {
            rs.add(get(" and id = " + i, Model.class, null).get());
        }
        return rs;

    }

}
