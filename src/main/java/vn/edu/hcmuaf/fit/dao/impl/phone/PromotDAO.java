package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Color;
import vn.edu.hcmuaf.fit.model.phone.PhonePromot;
import vn.edu.hcmuaf.fit.model.phone.Promot;

import javax.annotation.ManagedBean;
import java.sql.Timestamp;
import java.util.Set;
@ManagedBean
public class PromotDAO extends AbstractDAO<Promot> {


    public int insertPromot(Promot pp) {

        pp.setCreated_at(new Timestamp(System.currentTimeMillis()));
        pp.setUpdated_at(new Timestamp(System.currentTimeMillis()));

       return insertWithId("insert into promots (name,created_at,updated_at)" +
                        " values(:t.name,:t.created_at,:t.updated_at)",
                pp);
    }
    public void deletePromot(Promot c) {
        delete("delete from promots  where id = :t.id", c);

    }


    public void updatePromot(Promot c) {
        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update promots set name = :t.name,updated_at = :t.updated_at where id = :t.id", c);


    }


}
