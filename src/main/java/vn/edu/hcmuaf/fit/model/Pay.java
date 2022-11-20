package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;
import java.util.List;

@Data
public class Pay {
    private int id;
    private Timestamp create_at;
    private Timestamp updated_at;
    private String payment;
    private String address;
    private String name;
    private String phone;
    private String email;
    private int status;
    List<Code> codes;
    private int total;

    public Pay() {
        super();

    }

}
