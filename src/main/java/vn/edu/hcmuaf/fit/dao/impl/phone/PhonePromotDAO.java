package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.PhonePromot;
import vn.edu.hcmuaf.fit.model.phone.Review;

public class PhonePromotDAO extends AbstractDAO<PhonePromot> {


    public void insertPhonePromot(PhonePromot pp) {
        insert("insert into phone_promot (promotId,phoneId,created_at,updated_at,killed_at)" +
                        " values(:t.promotId,:t.phoneId,:t.created_at,:t.updated_at,t.killed_at)",
                pp);
    }

}
