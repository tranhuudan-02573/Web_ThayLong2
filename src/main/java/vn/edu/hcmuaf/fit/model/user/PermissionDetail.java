package vn.edu.hcmuaf.fit.model.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class PermissionDetail implements Serializable {
    private Timestamp created_at;
    private Timestamp updated_at;
    private Integer permissionId;
    private boolean check_action;
    private String action_code;
    private String action_name;


}
