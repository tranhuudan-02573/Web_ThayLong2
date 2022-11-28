package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Color;
import vn.edu.hcmuaf.fit.model.phone.Review;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ReviewDAO extends AbstractDAO<Review> {


    public void insertReview(Review review) {
        insert("insert into phone_review (userId,phoneId,content,created_at,updated_at,star,title,customerId,like,replyId)" +
                        " values(:t.userId,:t.phoneId,:t.content,:t.created_at,:t.updated_at,t.star,t.title,t.customerId,t.like,t.replyId)",
                review);
    }

    public Review getReviewById(int id) {

        Map<String, Object> o = new HashMap<>();
        o.put("id", id);

        List<Review> reviews = list(" and id = :id", "phone_review", Review.class, o);

        if (reviews.size() > 1 || reviews.isEmpty()) return null;

        return reviews.get(0);


    }

    public Review getO(Review r) {

        if (r.getReplyId() == 0) return r;
        return getO(getReviewById(r.getReplyId()));


    }

}
