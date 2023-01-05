package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.PhoneColor;
import vn.edu.hcmuaf.fit.model.phone.PhoneSpec;

public class PhoneSpecDAO extends AbstractDAO<PhoneSpec> {
    public PhoneSpecDAO() {
        super("phone_spec");
    }

}
