package vn.edu.hcmuaf.fit.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Role extends AModel {
    int id;
    String code;

    public Role(int id, String code) {
        this.id = id;
        this.code = code;
    }

    public Role() {
        super();

    }
    public Role(int id, Timestamp create_at, Timestamp updated_at) {
        super(id, create_at, updated_at);
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", code='" + code + '\'' +
                '}';
    }
}
