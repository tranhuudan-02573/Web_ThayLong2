package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Color;
import vn.edu.hcmuaf.fit.model.phone.Review;

public class ReviewDAO extends AbstractDAO<Review> {


    public void insertReview(Review review) {
        insert("insert into phone_review (userId,phoneId,content,created_at,updated_at,star,title,customerId,like,replyId)" +
                        " values(:t.userId,:t.phoneId,:t.content,:t.created_at,:t.updated_at,t.star,t.title,t.customerId,t.like,t.replyId)",
                review);
    }

}
