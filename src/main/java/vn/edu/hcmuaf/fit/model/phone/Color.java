package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.phone.PhoneDAO;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Color implements Serializable {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;

    private String name;


    public Color(String name) {
        this.name = name;
    }

    public Color(int id) {
        this.id = id;
    }

    public Color(int id, String name) {
        this.id = id;
        this.name = name;
    }
}
