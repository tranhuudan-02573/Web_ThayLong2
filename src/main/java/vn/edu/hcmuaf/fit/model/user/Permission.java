/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.hcmuaf.fit.model.user;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

@Data
public class Permission implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String name;
    private Set<PermissionDetail> permissionDetails = new HashSet<>();
    private boolean licensed;

    public void addAction(PermissionDetail pd) {
        permissionDetails.add(pd);
    }


}
