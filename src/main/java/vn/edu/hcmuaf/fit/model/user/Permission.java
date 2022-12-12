/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.hcmuaf.fit.model.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
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

    public void addAction(PermissionDetail pd) {
        permissionDetails.add(pd);
    }

    public Permission(String name, boolean licensed) {
        this.name = name;
        this.licensed = licensed;
    }

    public Permission(Timestamp updated_at, String name, boolean licensed) {
        this.updated_at = updated_at;
        this.name = name;
        this.licensed = licensed;
    }
}
