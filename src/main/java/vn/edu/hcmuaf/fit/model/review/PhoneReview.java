package vn.edu.hcmuaf.fit.model.review;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Base;

import java.io.Serializable;
import java.sql.Time;
import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PhoneReview extends Base<PhoneReview> implements Serializable {
    private Integer commentId;
    private Integer replyId;

    public Review _comment() {
        return new AbstractDAO<Review>("phone_review").get(" and commentId=" + this.commentId, Review.class, null);
    }

    public Review _reply() {
        return new AbstractDAO<Review>("phone_review").get(" and replyId=" + this.replyId, Review.class, null);
    }

}
