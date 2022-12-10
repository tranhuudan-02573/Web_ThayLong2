package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.PhoneColor;
import vn.edu.hcmuaf.fit.model.phone.PhonePromot;

import javax.annotation.ManagedBean;
import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.*;

@ManagedBean
public class PhonePromotDAO extends AbstractDAO<PhonePromot> {

    public PhonePromotDAO(String table) {
        super(table);
    }

    public void insertPhonePromot(PhonePromot pp, int id) {
        pp.setPhoneId(id);
        pp.setCreated_at(new Timestamp(System.currentTimeMillis()));
        pp.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        insert("insert into phone_promot(created_at,updated_at,killed_at,phoneId, promotId) " +
                "values(:t.created_at," +
                ":t.updated_at,:t.killed_at,:t.phoneId, :t.promotId)", pp);
    }

    public void deletePhonePromot(PhonePromot pp) {
        delete("delete from phone_promot where promotId = :t.promotId and phoneId = :t.phoneId", pp);
    }


    public void updatePromotList(Set<PhonePromot> old, Set<PhonePromot> colors) {
        if (old.size() < colors.size()) {
            for (PhonePromot color : colors) {
                if (checkSame(old, color.getPromotId())) {
                    updatePromot(color, color.getPromotId());
                } else {
                    insertPhonePromot(color, color.getPhoneId());
                }

            }
        }
        if (old.size() > colors.size()) {
            for (PhonePromot color : old) {
                if (checkSame(colors, color.getPromotId())) {
                    updatePromot(color, color.getPromotId());
                } else {
                    deletePhonePromot(color);
                }
            }
        }
        if (old.size() == colors.size()) {
            for (PhonePromot color : colors) {
                updatePromot(color, color.getPromotId());
            }
        }
    }

    public void deletePhonePromot(Set<PhonePromot> s) {
        List<PhonePromot> imgs = new ArrayList<>(s);
        for (PhonePromot img : imgs
        ) {
            deletePhonePromot(img);
        }


    }

    private void updatePromot(PhonePromot c, int pp) {
        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update phone_promot set promotId = :t.promotId," +
                "updated_at=:t.updated_at and killed_at=:t.killed_at where phoneId = :t.phoneId and promotId = " + pp, c);
    }

    private boolean checkSame(Set<PhonePromot> s, Integer id) {
        for (PhonePromot img : s) {
            if ((img.getPromotId().equals(id))) return true;
        }
        return false;
    }

    public void save(Set<PhonePromot> promotList, int id) {
        if (!promotList.isEmpty()) {

            for (PhonePromot pc : promotList) {
                insertPhonePromot(pc, id);
            }
        }
    }
}
