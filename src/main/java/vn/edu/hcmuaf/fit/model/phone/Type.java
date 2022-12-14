package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Type implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String name;

    public Type(String name) {
        this.name = name;
    }

    public Type(int id, String name) {
        this.id = id;
        this.name = name;
    }
}
