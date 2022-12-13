package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Color;
import vn.edu.hcmuaf.fit.model.phone.Promot;
import vn.edu.hcmuaf.fit.model.user.Permission;

import javax.annotation.ManagedBean;
import java.sql.Timestamp;

@ManagedBean
public class PermissionDAO extends AbstractDAO<Permission> {


    public PermissionDAO(String table) {
        super(table);
    }

    public int insertPermission(Permission pp) {

        pp.setCreated_at(new Timestamp(System.currentTimeMillis()));
        pp.setUpdated_at(new Timestamp(System.currentTimeMillis()));

       return insertWithId("insert into permissions (name,created_at,updated_at, licensed)" +
                        " values(:t.name,:t.created_at,:t.updated_at, :t.licensed)",
                pp);
    }
    public void deletePermission(Permission c) {
        delete("delete from permissions  where id = :t.id", c);

    }


    public void updatePermission(Permission c) {
        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update permissions set name = :t.name,updated_at = :t.updated_at, licensed= :t.licensed where id = :t.id", c);


    }
    public static void main(String[] args) {
        Permission s = new Permission(10,"khuyến mãi 13/13", true);

//        System.out.println(new PermissionDAO("permissions").insertPermission(s));

//        new PermissionDAO("permissions").deletePermission(s);
//
//        new PermissionDAO("permissions").updatePermission(s);
    }

}
