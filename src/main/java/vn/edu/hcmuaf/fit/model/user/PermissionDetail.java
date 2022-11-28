package vn.edu.hcmuaf.fit.model.user;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class PermissionDetail {
    private Timestamp created_at;
    private Timestamp updated_at;
    private int permissionId;
    private String action_name;
    private String action_code;
    private boolean check_action;

}
