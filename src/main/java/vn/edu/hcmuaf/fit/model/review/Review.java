package vn.edu.hcmuaf.fit.model.review;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Base;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.user.User;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Review extends Base<Review> implements Serializable {
    private String content;
    private Integer star;
    private String title;
    private Integer userId;
    private Integer phoneId;
    private Integer customerId;
    private boolean question;
    private String status;

    public User _user() {
        return new AbstractDAO<User>("users").get(" and id =" + this.userId, User.class, null);
    }

    public Phone _phone() {
        return new AbstractDAO<Phone>("phones").get(" and id =" + this.phoneId, Phone.class, null);
    }

    public List<PhoneReview> _reply() {
        return new AbstractDAO<PhoneReview>("phone_review").list(" and commentId =" + this.id, PhoneReview.class, null, null);
    }

    public List<Vote> _votes() {
        return new AbstractDAO<Vote>("votes").list(" and commentId=" + this.id, Vote.class, null, null);
    }


}
