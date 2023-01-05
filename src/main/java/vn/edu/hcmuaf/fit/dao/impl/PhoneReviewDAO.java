package vn.edu.hcmuaf.fit.dao.impl;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.PhonePromot;
import vn.edu.hcmuaf.fit.model.review.PhoneReview;

public class PhoneReviewDAO extends AbstractDAO<PhoneReview> {
    public PhoneReviewDAO() {
        super("phone_review");
    }

}
