package vn.edu.hcmuaf.fit.registration.token;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.model.user.User;

import java.sql.Time;
import java.sql.Timestamp;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ConfirmationToken {
    private int id;
    private String token;
    private Timestamp created_at;
    private Timestamp expired_at;
    private Timestamp confirmed_at;

    private User user;

    public ConfirmationToken(String token,
                             Timestamp createdAt,
                             Timestamp expiresAt,
                             User appUser) {
        this.token = token;
        this.created_at = createdAt;
        this.expired_at = expiresAt;
        this.user = appUser;
    }

}
