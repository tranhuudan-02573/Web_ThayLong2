package vn.edu.hcmuaf.fit.dao.impl.user;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.user.Action;

import javax.annotation.ManagedBean;
import java.math.BigInteger;
import java.util.Set;

@ManagedBean
public class PermissionDAO extends AbstractDAO<Action> {


    public PermissionDAO(String table) {
        super(table);
    }

    public Object insertPermission(Action p) {

        Object id = insertWithId("insert into permission (`name`,licensed,created_at,updated_at) values (:t.name,:t.licensed,:t.created_at,:t.updated_at) ", p);

        JDBiConnector.get().useHandle(handle -> {
            if (!p.getPermissionDetails().isEmpty()) {
                Set<PermissionAction> pds = p.getPermissionDetails();
                for (PermissionAction pd : pds) {
                    pd.setPermissionId(((BigInteger) id).intValue());
                    new PermissionDetailDAO("permission_detail").insertPD(pd);
                }
            }


        });

        return id;

    }

    public static void main(String[] args) {


        Action p = new Action();
        PermissionAction pd = new PermissionAction();
        p.addAction(pd);
        p.setLicensed(true);
        p.setName("manager 2");
        System.out.println(new PermissionDAO("permissions").insertPermission(p));
    }


}
