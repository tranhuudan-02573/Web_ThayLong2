package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Timestamp;
@Data @NoArgsConstructor @AllArgsConstructor
public class SpecType implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String name;

    public SpecType(String name) {
        this.name = name;
    }

    public SpecType(int id, String name) {
        this.id = id;
        this.name = name;
    }
}
