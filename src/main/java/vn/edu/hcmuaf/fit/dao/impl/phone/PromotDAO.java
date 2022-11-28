package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.PhonePromot;
import vn.edu.hcmuaf.fit.model.phone.Promot;

public class PromotDAO extends AbstractDAO<Promot> {


    public void insertPromot(Promot pp) {
        insert("insert into promots (name,created_at,updated_at)" +
                        " values(:t.name,:t.created_at,:t.updated_at)",
                pp);
    }

}
