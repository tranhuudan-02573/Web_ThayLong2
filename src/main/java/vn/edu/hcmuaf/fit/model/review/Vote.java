package vn.edu.hcmuaf.fit.model.review;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Timestamp;

@Data @AllArgsConstructor @NoArgsConstructor
public class Vote  implements Serializable {
    private Integer userId;
    private Integer commentId;
    private boolean like;
    private Timestamp created_at;
    private  Timestamp updated_at;



}
