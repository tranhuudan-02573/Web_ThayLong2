package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Promot;
import vn.edu.hcmuaf.fit.model.phone.SpecType;

import javax.annotation.ManagedBean;
import java.sql.Timestamp;

@ManagedBean
public class Spec_typeDAO extends AbstractDAO<SpecType> {


    public Spec_typeDAO(String table) {
        super(table);
    }

    public int insertSpecType(SpecType pp) {

        pp.setCreated_at(new Timestamp(System.currentTimeMillis()));
        pp.setUpdated_at(new Timestamp(System.currentTimeMillis()));

       return insertWithId("insert into spec_types (name,created_at,updated_at)" +
                        " values(:t.name,:t.created_at,:t.updated_at)",
                pp);
    }
    public void deleteSpecType(SpecType c) {
        delete("delete from spec_types  where id = :t.id", c);

    }


    public void updateSpecType(SpecType c) {
        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update spec_types set name = :t.name,updated_at = :t.updated_at where id = :t.id", c);


    }
    public static void main(String[] args) {
        SpecType s = new SpecType("kĩ thuật");
//
//        System.out.println(new Spec_typeDAO("spec_types").insertSpecType(s));
//
        SpecType s1 = new SpecType(2,"kĩ thuật1");
        new Spec_typeDAO("spec_types").deleteSpecType(s1);
//        new Spec_typeDAO("spec_types").updateSpecType(s1);
    }

}
