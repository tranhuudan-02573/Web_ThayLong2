package vn.edu.hcmuaf.fit.registration;

import lombok.Data;

@Data
public class RegistrationRequest {
    private final String name;
    private final String phone;
    private final String email;
    private final String password;
}
