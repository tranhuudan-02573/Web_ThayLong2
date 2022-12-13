package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Promot;
import vn.edu.hcmuaf.fit.model.phone.Sale;
import vn.edu.hcmuaf.fit.model.phone.Spec;
import vn.edu.hcmuaf.fit.model.phone.Type;

import javax.annotation.ManagedBean;
import java.sql.Timestamp;

@ManagedBean
public class TypeDAO extends AbstractDAO<Type> {


    public TypeDAO(String table) {
        super(table);
    }

    public int insertType(Type pp) {

        pp.setCreated_at(new Timestamp(System.currentTimeMillis()));
        pp.setUpdated_at(new Timestamp(System.currentTimeMillis()));
      return  insertWithId("insert into types (name,created_at,updated_at)" +
                        " values(:t.name,:t.created_at,:t.updated_at)",
                pp);
    }
    public void deleteType(Type c) {
        delete("delete from types  where id = :t.id" , c);
    }


    public void updateType(Type c) {
        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update types set name = :t.name,updated_at = :t.updated_at where id = :t.id", c);


    }
    public static void main(String[] args) {
        Type s = new Type(4,"Ipone1");
//
//        System.out.println(new TypeDAO("types").insertType(s));
        new TypeDAO("types").deleteType(s);
//        new TypeDAO("types").updateType(s);
    }

}
