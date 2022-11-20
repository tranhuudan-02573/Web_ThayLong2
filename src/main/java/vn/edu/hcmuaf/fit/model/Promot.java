package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;
@Data
public class Promot {
    private int id;
    private Timestamp create_at;
    private Timestamp updated_at;

    private String name;
    private String desc;
    private String img;
    private Timestamp killed_at;

    public Promot() {
        super();

    }
}
