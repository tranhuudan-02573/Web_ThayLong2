package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Model {
    private int id;
    private Timestamp create_at;
    private Timestamp updated_at;
    private String name;
    private String img;
}
