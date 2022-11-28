package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.PhoneCap;

public class PhoneCapDAO extends AbstractDAO<PhoneCap> {


    public void insertPhoneCap(PhoneCap pcap) {
        insert("insert into phone_cap(created_at,updated_at,phoneId, capId) " +
                        "values(:t.created_at," +
                        ":t.updated_at,:t.phoneId, :t.capId)", pcap);
    }

}
