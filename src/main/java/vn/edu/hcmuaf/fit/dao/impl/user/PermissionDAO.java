package vn.edu.hcmuaf.fit.dao.impl.user;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.user.Permission;
import vn.edu.hcmuaf.fit.model.user.PermissionDetail;

import javax.annotation.ManagedBean;
import java.math.BigInteger;
import java.util.Set;

@ManagedBean
public class PermissionDAO extends AbstractDAO<Permission> {


    public PermissionDAO(String table) {
        super(table);
    }

    public Object insertPermission(Permission p) {

        Object id = insertWithId("insert into permission (`name`,licensed,created_at,updated_at) values (:t.name,:t.licensed,:t.created_at,:t.updated_at) ", p);

        JDBiConnector.get().useHandle(handle -> {
            if (!p.getPermissionDetails().isEmpty()) {
                Set<PermissionDetail> pds = p.getPermissionDetails();
                for (PermissionDetail pd : pds) {
                    pd.setPermissionId(((BigInteger) id).intValue());
                    new PermissionDetailDAO("permission_detail").insertPD(pd);
                }
            }


        });

        return id;

    }

    public static void main(String[] args) {


        Permission p = new Permission();
        PermissionDetail pd = new PermissionDetail();
        p.addAction(pd);
        p.setLicensed(true);
        p.setName("manager 2");
        System.out.println(new PermissionDAO("permissions").insertPermission(p));
    }


}
