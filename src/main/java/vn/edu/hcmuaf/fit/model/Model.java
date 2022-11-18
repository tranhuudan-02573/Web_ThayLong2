package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public  abstract class Model {
    int id;
    Timestamp create_at;
    Timestamp updated_at;

    public Model(int id, Timestamp create_at, Timestamp updated_at) {
        this.id = id;
        this.create_at = create_at;
        this.updated_at = updated_at;
    }
}
