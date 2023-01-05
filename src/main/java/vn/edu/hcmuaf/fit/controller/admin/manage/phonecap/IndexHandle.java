package vn.edu.hcmuaf.fit.controller.admin.manage.phonecap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( urlPatterns = {"/admin/manage/phonecap"})
public class IndexHandle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        User user = (User) SessionUntil.get(request, Variable.Global.USER.toString());
//        if (user != null && user.get(Variable.Global.PHONE.toString()) != null) {
//            List<PhoneCap> users = new PhoneCapDAO().list("", PhoneCap.class, null, null, null, null);
//            request.setAttribute("pcs", users);
            request.getRequestDispatcher("/views/admin/manage/phonecap/index.jsp").forward(request,response);
//        } else {
//            SessionUntil.set(request, Variable.Global.TYPE.toString(), "error");
//            SessionUntil.set(request, Variable.Global.MESSAGE.toString(), " ban ko co quyen");
//            response.sendRedirect("/admin/home");
//        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
