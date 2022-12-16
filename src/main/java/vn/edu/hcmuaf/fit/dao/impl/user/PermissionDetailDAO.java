package vn.edu.hcmuaf.fit.dao.impl.user;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;

import javax.annotation.ManagedBean;

@ManagedBean
public class PermissionDetailDAO extends AbstractDAO<PermissionAction> {


    public PermissionDetailDAO(String table) {
        super(table);
    }

    public void insertPD(PermissionAction permissionDetail) {
        insert("insert into permission_detail (`permissionId`,check_action,created_at,updated_at,actionId) " +
                "values (:t.permissionId,:t.check_action,:t.created_at,:t.updated_at,:t.actionId)", permissionDetail);

    }
}
