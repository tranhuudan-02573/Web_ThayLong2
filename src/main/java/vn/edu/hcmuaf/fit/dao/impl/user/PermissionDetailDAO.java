package vn.edu.hcmuaf.fit.dao.impl.user;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.user.PermissionDetail;

import javax.annotation.ManagedBean;

@ManagedBean
public class PermissionDetailDAO extends AbstractDAO<PermissionDetail> {


    public void insertPD(PermissionDetail permissionDetail) {
        insert("insert into permission_detail (`permissionId`,check_action,created_at,updated_at,actionId) " +
                "values (:t.permissionId,:t.check_action,:t.created_at,:t.updated_at,:t.actionId)", permissionDetail);

    }
}
