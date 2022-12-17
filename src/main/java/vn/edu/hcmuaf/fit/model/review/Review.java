package vn.edu.hcmuaf.fit.model.review;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Base;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.user.User;

import java.io.Serializable;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Review extends Base<Review> implements Serializable {
    private String content;
    private Integer star;
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

    public List<Vote> _like() {
        return new AbstractDAO<Vote>("votes").list(" and `like`=true and commentId=" + this.id, Vote.class, null, null);
    }

    public List<Vote> _dislike() {
        return new AbstractDAO<Vote>("votes").list(" and `like`=false and commentId=" + this.id, Vote.class, null, null);
    }


}
