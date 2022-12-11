package vn.edu.hcmuaf.fit.dao.impl.review;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.review.Review;

import javax.annotation.ManagedBean;
import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.*;

@ManagedBean
public class ReviewDAO extends AbstractDAO<Review> {


    public ReviewDAO(String table) {
        super(table);
    }

    public int insertReview(Review r, Object id) {
        r.setPhoneId(((BigInteger) id).intValue());
        r.setCreated_at(new Timestamp(System.currentTimeMillis()));
        r.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId("insert into reviews (userId,phoneId,content,created_at,updated_at,star,title,customerId,status,question)" +
                        " values(:t.userId,:t.phoneId,:t.content,:t.created_at,:t.updated_at,t.star,t.title,t.customerId,t.status,t.question)",
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

        return list("", Review.class,null,null);
    }


    public List<Review> cmtByUser(int u){

        return list(" and userId = "+u, Review.class,null,null);

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

        Review r = new Review();
        r.setId(id);

        return get(" and id = :id",  Review.class,r);


    }

    public Review getO(Review r) {

        if (r.getReplyId() == null) return r;
        return getO(getReviewById(r.getReplyId()));


    }
/*     if (rowView.getColumn("prw_id", Long.class) != null) {
                            Review r = rowView.getRow(Review.class);

                            if (r.getReplyId() == null) {
                                if (!(phone.getReviews().containsKey(r.getId())))
                                    phone.addReview(r.getId(), r);
                            } else {
                                if (phone.getReviews().containsKey(new ReviewDAO().getO(r).getId())) {
                                    phone.getReviews().get(new ReviewDAO().getO(r).getId()).addReview(r);
                                } else {
                                    Review rs = new ReviewDAO().getO(r);
                                    rs.addReview(r);
                                    phone.addReview(new ReviewDAO().getO(r).getId(), rs);
                                }
                            }
                        }*/



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
