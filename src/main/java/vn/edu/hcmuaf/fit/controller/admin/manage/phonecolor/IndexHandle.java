package vn.edu.hcmuaf.fit.controller.admin.manage.phonecolor;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.dao.impl.PhoneCapDAO;
import vn.edu.hcmuaf.fit.dao.impl.PhoneColorDAO;
import vn.edu.hcmuaf.fit.model.phone.PhoneCap;
import vn.edu.hcmuaf.fit.model.phone.PhoneColor;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/manage/phonecolor"})
public class IndexHandle extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        User user = (User) SessionUntil.get(request, Variable.Global.USER.toString());
        if (user != null && user.get(Variable.Global.PHONE.toString()) != null) {
            List<PhoneColor> users = new PhoneColorDAO().list("", PhoneColor.class, null, null, null, null);
            request.setAttribute("pcs", users);
            request.getRequestDispatcher("/views/admin/manage/phonecolor/index.jsp").forward(request, response);
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
