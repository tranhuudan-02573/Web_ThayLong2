package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Brand;
import vn.edu.hcmuaf.fit.model.phone.Cap;
import vn.edu.hcmuaf.fit.model.phone.Color;

import javax.annotation.ManagedBean;
import java.sql.Timestamp;

@ManagedBean

public class CapDAO extends AbstractDAO<Cap> {


    public CapDAO(String table) {
        super(table);
    }

    public int insertCap(Cap pp) {
        pp.setCreated_at(new Timestamp(System.currentTimeMillis()));
        pp.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId("insert into caps (cap,name,created_at,updated_at)" +
                        " values(:t.cap,:t.name,:t.created_at,:t.updated_at)",
                pp);
    }

    public void deleteCap(Cap c) {
        delete("delete from caps  where id = :t.id", c);

    }

    public void updateCap(Cap c) {
        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update caps set cap = :t.cap, name = :t.name,updated_at = :t.updated_at where id = :t.id", c);


    }

    public static void main(String[] args) {
        Cap s = new Cap(6,"258GB", 2);

//        System.out.println(new CapDAO("caps").insertCap(s));
//        new CapDAO("caps").deleteCap(s);
//        Cap s1 = new Cap("257GB", 2);
        new CapDAO("caps").updateCap(s);
    }
}
