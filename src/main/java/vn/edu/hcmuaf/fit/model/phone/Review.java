package vn.edu.hcmuaf.fit.model.phone;

import lombok.Data;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

@Data
public class Review {
    private int id;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String content;
    private int star;
    private String title;
    private boolean like;
    Set<Review> replyList = new HashSet<>();
    private int userId;
    private int replyId;
    private int phoneId;
    private int customerId;
    public void addReview(Review r) {
        replyList.add(r);
    }
}
