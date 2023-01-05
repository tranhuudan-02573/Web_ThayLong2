package vn.edu.hcmuaf.fit.controller.admin.manage.phonereview;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.impl.PhonePromotDAO;
import vn.edu.hcmuaf.fit.dao.impl.PhoneReviewDAO;
import vn.edu.hcmuaf.fit.model.phone.PhonePromot;
import vn.edu.hcmuaf.fit.model.review.PhoneReview;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet( urlPatterns = {"/admin/manage/phonereview"})
public class IndexHandle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) SessionUntil.get(request, Variable.Global.PHONE.toString());
        if (user != null && user.get(Variable.Global.USER.toString()) != null) {
            List<PhoneReview> users = new PhoneReviewDAO().list("", PhoneReview.class, null, null, null, null);
            request.setAttribute("pps", users);
            request.getRequestDispatcher("/views/admin/manage/phonepromot/index.jsp").forward(request,response);
        } else {
            SessionUntil.set(request, Variable.Global.TYPE.toString(), "error");
            SessionUntil.set(request, Variable.Global.MESSAGE.toString(), " ban ko co quyen");
            response.sendRedirect("/admin/home");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
