package vn.edu.hcmuaf.fit.dao.impl.review;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.review.Review;

import javax.annotation.ManagedBean;
import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.*;

@ManagedBean
public class ReviewDAO extends AbstractDAO<Review> {


    public int insertReview(Review r, Object id) {
        r.setPhoneId(((BigInteger) id).intValue());
        r.setCreated_at(new Timestamp(System.currentTimeMillis()));
        r.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId("insert into phone_review (userId,phoneId,content,created_at,updated_at,star,title,customerId,like,replyId)" +
                        " values(:t.userId,:t.phoneId,:t.content,:t.created_at,:t.updated_at,t.star,t.title,t.customerId,t.like,t.replyId)",
                r);
    }

    public void updateReview(Review r) {
        r.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update phone_review set userId = :t.userId,phoneId=:t.phoneId,content =:t.content,star =:t.star,updated_at =:t.updated_at,title =:t.title,customerId =:t.customerId,like=:t.like,replyId =:t.replyId,type=:t.type", r);
    }

    public void deleteReviewList(Set<Review> rs) {
        List<Review> reviews = new ArrayList<>(rs);
        for (Review r : reviews
        ) {
            deleteReview(r);

        }
    }

    public void deleteReview(Review r) {

        delete("delete from phone_review where id =:t.id", r);


    }

    public List<Review> getAll(){

        return list("","phone_review", Review.class,null);
    }


    public List<Review> cmtByUser(int u){

        return list(" and userId = "+u,"phone_review", Review.class,null);

    }

    public void deleteReviewByUser(int u){

        List<Review> rs = cmtByUser(u);
        List<Review> rs2 = getAll();

        for (Review r:rs
             ) {
            if(r.getReplyId()==null){


            }

        }


    }

    public Review getReviewById(int id) {

        Map<String, Object> o = new HashMap<>();
        o.put("id", id);

        return get(" and id = :id", "phone_review", Review.class, o);


    }

    public Review getO(Review r) {

        if (r.getReplyId() == null) return r;
        return getO(getReviewById(r.getReplyId()));


    }




    public void save(Map<Integer, Review> reviews, int id) {
        if (!reviews.isEmpty()) {

            Set<Integer> set = reviews.keySet();
            for (Integer i : set) {
                Review r = reviews.get(i);
                insertReview(r, id);
            }
        }
    }
}
