package vn.edu.hcmuaf.fit.controller.web.phone.detail;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.dao.impl.CustomerDAO;
import vn.edu.hcmuaf.fit.dao.impl.ReviewDAO;
import vn.edu.hcmuaf.fit.dao.impl.VoteDAO;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.review.QuestionType;
import vn.edu.hcmuaf.fit.model.review.Review;
import vn.edu.hcmuaf.fit.model.review.Vote;
import vn.edu.hcmuaf.fit.model.user.Customer;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/phone-detail"})
public class PhoneDetailController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id").trim());
        String cap = request.getParameter("capId");
        String sql = " and id = " + id;
        Phone phoneP = new AbstractDAO<Phone>("phones").get(sql, Phone.class, null).get();
        request.setAttribute("phoneP", phoneP);
        int capId = phoneP.getId();
        if (cap != null) {
            capId = Integer.parseInt(cap);
            sql = " and id = " + capId;
        }

        String pagination = request.getParameter("page");
        int paginationnum = 1;
        if (pagination != null) {
            paginationnum = Integer.parseInt(pagination) - 1;
        }

        String pagination2 = request.getParameter("page2");
        int paginationnum2 = 1;
        if (pagination2 != null) {
            paginationnum2 = Integer.parseInt(pagination2) - 1;


        }

        List<QuestionType> qs = new AbstractDAO<QuestionType>("question_types").list("", QuestionType.class, null, null, null, null);

        String star = request.getParameter("star");
        Phone phone = new AbstractDAO<Phone>("phones").get(sql, Phone.class, null).get();
        String bought = request.getParameter("bought");
        String ss = " and isReply =false and star is not null and isQuestion=false and phoneId =" +
                phone.getId();
        if (star != null) {
            if (Integer.parseInt(star) != 0)
                ss += " and star = " + star;
            request.setAttribute("star", star);
        }
        if (bought != null) {

        }
        String ss2 = " and isReply =false and star is null  and isQuestion=true and phoneId =" +
                phone.getId();
        String key = request.getParameter("key");
        if (key != null) {
            ss2 += " and content like '%" + key + "%'";
            request.setAttribute("key", key);
        }

        List<Review> reviews = new AbstractDAO<Review>("reviews").list0(ss, Review.class, null, null, null, null, 3, paginationnum * 3);
        List<Review> questions = new AbstractDAO<Review>("reviews").list0(ss2, Review.class, null, null, null, null, 3, 3 * paginationnum2);

        List<Review> reviews2 = new AbstractDAO<Review>("reviews").list0(ss, Review.class, null, null, null, null, null, null);
        List<Review> questions2 = new AbstractDAO<Review>("reviews").list0(ss2, Review.class, null, null, null, null, null, null);


        double s = reviews2.size();
        double total = s / 3;

        if (Math.floor(total) != Math.ceil(total)) total = Math.ceil(total);


        double s2 = questions2.size();
        double total2 = s2 / 3;

        if (Math.floor(total2) != Math.ceil(total2)) total2 = Math.ceil(total2);
        String colorId = request.getParameter("colorId");
        if (colorId != null)
            request.setAttribute("colorId", colorId);
        String num = request.getParameter("num");
        if (num != null)
            request.setAttribute("num", num);
        request.setAttribute("capId", capId);
        request.setAttribute("paginationnum", paginationnum + 1);
        request.setAttribute("paginationnum2", paginationnum2 + 1);
        request.setAttribute("total", total);
        request.setAttribute("total2", total2);
        request.setAttribute("review", reviews);
        request.setAttribute("question", questions);
        request.setAttribute("phone", phone);
        request.setAttribute("qs", qs);

        request.getRequestDispatcher("/views/web/product.jsp").forward(request, response);

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = (User) SessionUntil.get(request, Variable.Global.USER.toString());

        String action = request.getParameter("action");
        String phoneId = request.getParameter("phoneId");

        if (user != null) {
            if (action.equals("like")) {
                String reviewId = request.getParameter("reviewId");
                Vote v = new Vote();
                v.setUserId(user.getId());
                v.setCommentId(Integer.parseInt(reviewId));
                v.setLike(true);
                new VoteDAO().save(v);
                SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
                SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da thich thanh cong");
            }
            if (action.equals("dislike")) {
                String reviewId = request.getParameter("reviewId");
                Vote v = new Vote();
                v.setUserId(user.getId());
                v.setCommentId(Integer.parseInt(reviewId));
                v.setLike(false);

                new VoteDAO().save(v);
                SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
                SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da ko thich thanh cong");

            }
            if (action.equals("delete")) {
                String reviewId = request.getParameter("reviewId");
                new ReviewDAO().delete(Integer.parseInt(reviewId));
                SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
                SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da xoa thanh cong");
            }
            if (action.equals("review")) {
                String content = request.getParameter("content");
                Review r = new Review();
                r.setUserId(user.getId());
                r.setPhoneId(Integer.parseInt(phoneId));
                r.setContent(content);
                String star = request.getParameter("star");
                r.setQuestion(false);
                r.setReply(false);
                r.setStar(Integer.parseInt(star));

                new ReviewDAO().save(r);
                SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
                SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da them thanh cong review");
            }
            if (action.equals("question")) {
                String content = request.getParameter("content");
                Review r = new Review();
                r.setUserId(user.getId());
                r.setPhoneId(Integer.parseInt(phoneId));
                r.setContent(content);
                String questionId = request.getParameter("questionType");
                r.setQuestion(true);
                r.setReply(false);
                r.setTypeId(Integer.parseInt(questionId));

                new ReviewDAO().save(r);
                SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
                SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da them thanh cong question");
            }
        } else {
            if (action.equals("delete")) {
                SessionUntil.set(request, Variable.Global.TYPE.toString(), "error");
                SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "ko the xoa");
            }
            if (action.equals("review")) {
                String content = request.getParameter("content");
                Review r = new Review();

                String name = request.getParameter("name");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                Customer customer = new Customer();
                customer.setPhone(phone);
                customer.setEmail(email);
                customer.setName(name);
                int id = new CustomerDAO().save(customer);
                r.setCustomerId(id);
                r.setPhoneId(Integer.parseInt(phoneId));
                r.setContent(content);
                String star = request.getParameter("star");
                r.setQuestion(false);
                r.setReply(false);
                r.setStar(Integer.parseInt(star));

                new ReviewDAO().save(r);
                SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
                SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da them thanh cong review");
            }
            if (action.equals("question")) {
                String content = request.getParameter("content");
                Review r = new Review();
                String name = request.getParameter("name");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                Customer customer = new Customer();
                customer.setPhone(phone);
                customer.setEmail(email);
                customer.setName(name);
                int id = new CustomerDAO().save(customer);
                r.setCustomerId(id);
                r.setPhoneId(Integer.parseInt(phoneId));
                r.setContent(content);
                String questionId = request.getParameter("questionType");
                r.setQuestion(true);
                r.setReply(false);
                r.setTypeId(Integer.parseInt(questionId));
                new ReviewDAO().save(r);
                SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
                SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da them thanh cong question");
            }
        }
        response.sendRedirect("/phone-detail?page=1&page2=1&id=" + phoneId);


    }


}
