package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public  class AModel {
    int id;
    Timestamp create_at;
    Timestamp updated_at;


    public AModel() {

    }
}
