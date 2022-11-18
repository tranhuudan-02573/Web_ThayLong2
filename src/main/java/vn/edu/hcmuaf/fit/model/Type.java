package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Type extends AModel {

    public Type() {
        super();

    }
    public Type(int id, Timestamp create_at, Timestamp updated_at) {
        super(id, create_at, updated_at);
    }
}
