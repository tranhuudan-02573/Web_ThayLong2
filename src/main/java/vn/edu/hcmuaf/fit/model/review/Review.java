package vn.edu.hcmuaf.fit.model.review;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Base;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.user.Customer;
import vn.edu.hcmuaf.fit.model.user.User;

import java.io.Serializable;
import java.sql.Timestamp;
import java.time.Period;
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
    private boolean isReply;
    private boolean isQuestion;
    private String status;
    private Integer typeId;
    public Period period(){

        return Period.between(updated_at.toLocalDateTime().toLocalDate(),new Timestamp(System.currentTimeMillis()).toLocalDateTime().toLocalDate());
    }


    public QuestionType _questionType() {
        return new AbstractDAO<QuestionType>("question_types").get(" and id =" + this.typeId, QuestionType.class, null).get();
    }

    public Customer _customer() {
        return new AbstractDAO<Customer>("customers").get(" and id =" + this.customerId, Customer.class, null).get();
    }

    public User _user() {
        return new AbstractDAO<User>("users").get(" and id =" + this.userId, User.class, null).get();
    }

    public Phone _phone() {
        return new AbstractDAO<Phone>("phones").get(" and id =" + this.phoneId, Phone.class, null).get();
    }

    public List<PhoneReview> _reply() {
        return new AbstractDAO<PhoneReview>("phone_review").list("  and commentId =" + this.id, PhoneReview.class, null, null, null, null);
    }

    public List<Vote> _like() {
        return new AbstractDAO<Vote>("votes").list(" and `like`=true and commentId=" + this.id, Vote.class, null, null, null, null);
    }

    public List<Vote> _dislike() {
        return new AbstractDAO<Vote>("votes").list(" and `like`=false and commentId=" + this.id, Vote.class, null, null, null, null);
    }


}
