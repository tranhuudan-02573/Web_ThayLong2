package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Spec;

import java.sql.Timestamp;

public class SpecDAO extends AbstractDAO<Spec> {
    public SpecDAO() {
        super("specs");
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

}
