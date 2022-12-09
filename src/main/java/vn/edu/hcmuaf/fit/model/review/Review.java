package vn.edu.hcmuaf.fit.model.review;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Review {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String content;
    private Integer star;
    private String title;
    Set<Review> replyList = new HashSet<>();
    Set<Vote> votes = new HashSet<>();
    private Integer userId;
    private Integer replyId;
    private Integer phoneId;
    private Integer customerId;
    private boolean question;
    private String status;
    public void addReview(Review r) {
        replyList.add(r);
    }
}
