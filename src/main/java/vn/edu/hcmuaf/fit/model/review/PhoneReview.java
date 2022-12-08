package vn.edu.hcmuaf.fit.model.review;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Time;
import java.sql.Timestamp;

@Data @AllArgsConstructor @NoArgsConstructor
public class PhoneReview  implements Serializable {
    private Integer commentId;
    private Integer replyId;
    private Timestamp created_at;
    private Timestamp updated_at;




}
