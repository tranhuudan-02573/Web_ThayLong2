package vn.edu.hcmuaf.fit.model.phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Base<T> {
    protected int id;
    protected Timestamp created_at;
    protected Timestamp updated_at;
    List<T> result = new ArrayList<>();
}
