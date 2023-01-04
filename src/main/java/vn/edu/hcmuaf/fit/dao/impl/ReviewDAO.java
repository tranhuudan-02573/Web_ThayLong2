package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.review.Review;

import java.sql.Timestamp;

public class ReviewDAO extends AbstractDAO<Review> {
    public ReviewDAO() {
        super("reviews");
    }

    public int save(Review r) {
        r.setCreated_at(new Timestamp(System.currentTimeMillis()));
        r.setUpdated_at(new Timestamp(System.currentTimeMillis()));

       return insertWithId(" insert into reviews(phoneId,content,star,created_at,updated_at,isQuestion,isReply,customerId,userId) " +
                "values(:t.phoneId,:t.content,:t.star,:t.created_at,:t.updated_at,:t.question,:t.reply,:t.customerId,:t.userId) ", r);
    }


    public void delete(int parseInt) {
        update(" delete from reviews where id= " + parseInt,null);
    }
}
