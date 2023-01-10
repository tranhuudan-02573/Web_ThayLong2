package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.PhoneState;

import java.sql.Timestamp;

public class PhoneStateDAO extends AbstractDAO<PhoneState> {
    public PhoneStateDAO() {
        super("phone_states");
    }

    public int save(PhoneState a) {
        a.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        a.setCreated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId(" insert into phone_states(name,key,created_at,updated_at) values (:t.name,:t.key,:t.created_at,:t.updated_at)", a);
    }

    public boolean update(PhoneState a) {
        a.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return update(" update phone_states set name =:t.name,key=:t.key where id=:t.id", a);
    }

    public void delete(PhoneState a) {
        update(" delete from phone_states where id=:t.id ", a);
    }

}
