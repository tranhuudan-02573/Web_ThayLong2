package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Sale;
import vn.edu.hcmuaf.fit.model.phone.Spec;
import vn.edu.hcmuaf.fit.model.phone.Type;

import javax.annotation.ManagedBean;
import java.sql.Timestamp;

@ManagedBean
public class SpecDAO extends AbstractDAO<Spec> {


    public SpecDAO(String table) {
        super(table);
    }

    public int insertSpec(Spec pp) {

        pp.setCreated_at(new Timestamp(System.currentTimeMillis()));
        pp.setUpdated_at(new Timestamp(System.currentTimeMillis()));
          return  insertWithId("insert into specs (name,created_at,updated_at, spec_typeId)" +
                        " values(:t.name,:t.created_at,:t.updated_at,:t.specTypeId)",
                pp);
    }
    public void deleteSpec(Spec c) {
        delete("delete from specs  where id = :t.id" , c);
    }


    public void updateSpec(Spec c) {
        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update specs set name = :t.name,updated_at = :t.updated_at, spec_typeId = :t.specTypeId where id = :t.id", c);


    }
    public static void main(String[] args) {
        Spec s = new Spec("so kĩ thuật", 1);

        System.out.println(new SpecDAO("specs").insertSpec(s));
    }

}
