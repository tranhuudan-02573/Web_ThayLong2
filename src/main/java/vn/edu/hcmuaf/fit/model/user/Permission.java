/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.hcmuaf.fit.model.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Permission implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String name;
    private Set<PermissionDetail> permissionDetails = new HashSet<>();
    private boolean licensed;

    public List<PermissionDetail> _perPermissionDetails() {

        return new AbstractDAO<PermissionDetail>("permission_detail").list(" and permissionId =" + this.id, PermissionDetail.class, null, null);
    }


    public void addAction(PermissionDetail pd) {
        permissionDetails.add(pd);
    }

    public Permission(String name, boolean licensed) {
        this.name = name;
        this.licensed = licensed;
    }

    public Permission(int id, String name, boolean licensed) {
        this.id = id;
        this.name = name;
        this.licensed = licensed;
    }
}
