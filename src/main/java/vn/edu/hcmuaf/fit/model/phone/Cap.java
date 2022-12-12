package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Cap {
    private Timestamp created_at;
    private Timestamp updated_at;
    private int id;
    private String name;
    private Integer cap;

    public Cap(String name, Integer cap) {
        this.name = name;
        this.cap = cap;
    }

    public Cap(int id, String name, Integer cap) {
        this.id = id;
        this.name = name;
        this.cap = cap;
    }
}
