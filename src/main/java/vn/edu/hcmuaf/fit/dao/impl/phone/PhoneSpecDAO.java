package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.PhoneColor;
import vn.edu.hcmuaf.fit.model.phone.PhonePromot;
import vn.edu.hcmuaf.fit.model.phone.PhoneSpec;

import javax.annotation.ManagedBean;
import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.*;

@ManagedBean
public class PhoneSpecDAO extends AbstractDAO<PhoneSpec> {


    public PhoneSpecDAO(String table) {
        super(table);
    }

    public void insertPhoneSpec(PhoneSpec ps, int id) {
        ps.setPhoneId(id);
        ps.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        ps.setCreated_at(new Timestamp(System.currentTimeMillis()));
        insert("insert into phone_spec(created_at,updated_at,value, phoneId,specId) " +
                "values(:t.created_at," +
                ":t.updated_at,:t.value, :t.phoneId,:t.specId)", ps);
    }


    public void updateSpecList(Set<PhoneSpec> old, Set<PhoneSpec> colors) {

        if (old.size() < colors.size()) {

            for (PhoneSpec spec : colors) {
                if (checkSame(old, spec.getSpecId())) {
                    updateSpec(spec, spec.getSpecId());
                } else {
                    insertPhoneSpec(spec, spec.getPhoneId());
                }

            }
        }
        if (old.size() > colors.size()) {
            for (PhoneSpec color : old) {
                if (checkSame(colors, color.getSpecId())) {
                    updateSpec(color, color.getSpecId());
                } else {
                    deleteSpec(color);
                }

            }
        }
        if (old.size() == colors.size()) {
            for (PhoneSpec color : colors) {
                updateSpec(color, color.getSpecId());
            }
        }
    }

    public void deletePhoneSpec(Set<PhoneSpec> s) {
        List<PhoneSpec> imgs = new ArrayList<>(s);
        for (PhoneSpec img : imgs
        ) {
            deleteSpec(img);
        }


    }

    public void updateSpec(PhoneSpec c, int sp) {
        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update phone_spec set value = :t.value,specId = :t.specId," +
                "updated_at=:t.updated_at where phoneId = :t.phoneId and specId = " + sp, c);
    }

    private void deleteSpec(PhoneSpec img) {

        delete("delete from phone_spec where phoneId =:t.phoneId and specId = :t.specId", img);

    }

    private boolean checkSame(Set<PhoneSpec> s, Integer id) {
        for (PhoneSpec img : s) {
            if ((img.getSpecId().equals(id))) return true;
        }
        return false;


    }

    public static void main(String[] args) {
        PhoneSpec spec = new PhoneSpec();
        spec.setPhoneId(1);
        List<PhoneSpec> l = new PhoneSpecDAO("phone_spec").list(" and phoneId =:t.phoneId ",  PhoneSpec.class,spec);
        Set<PhoneSpec> s = new HashSet<>(l);
        Set<PhoneSpec> s2 = new HashSet<>(l);

        s2.clear();


//        List<PhoneSpec> list = new ArrayList<PhoneSpec>(s2);
//        list.get(0).setValue("tran huu dan");

//        PhoneSpec ppp = l.get(0);
//        ppp.setSpecId(2);

//        s2 = new HashSet<>(list);
        System.out.println(s);
        System.out.println(s2);


//new PhoneSpecDAO().updateSpec(ppp,2);
        new PhoneSpecDAO("phone_spec").updateSpecList(s, s2);

    }

    public void save(Set<PhoneSpec> specList, int id) {
        if (!specList.isEmpty()) {

            for (PhoneSpec pc : specList) {
                insertPhoneSpec(pc, id);
            }
        }

    }
}
