package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Promot;

import javax.annotation.ManagedBean;
import java.sql.Timestamp;

@ManagedBean
public class PromotDAO extends AbstractDAO<Promot> {


    public PromotDAO(String table) {
        super(table);
    }

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
    public static void main(String[] args) {
//        Promot s = new Promot("khuyến mãi 12/12");
//
//        System.out.println(new PromotDAO("promots").insertPromot(s));
        Promot s1 = new Promot(3,"khuyến mãi lớn");

        new PromotDAO("promots").deletePromot(s1);

//        new PromotDAO("promots").updatePromot(s1);
    }

}
