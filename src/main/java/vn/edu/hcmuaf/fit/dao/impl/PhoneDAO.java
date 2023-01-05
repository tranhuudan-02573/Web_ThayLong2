package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.phone.Spec;

public class PhoneDAO extends AbstractDAO<Phone> {
    public PhoneDAO() {
        super("phones");
    }

}
