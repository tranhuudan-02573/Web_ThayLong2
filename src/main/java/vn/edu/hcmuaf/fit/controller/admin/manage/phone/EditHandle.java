package vn.edu.hcmuaf.fit.controller.admin.manage.phone;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.impl.PhoneDAO;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/manage/phone/edit"})
public class EditHandle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = (User) SessionUntil.get(request, Variable.Global.USER.toString());
        if (user != null && user.get(Variable.Global.PHONE.toString()) != null) {
            String id = request.getParameter("id");
            int ids = 0;
            if (id != null) {
                ids = Integer.parseInt(id.trim());
                if (ids != 0) {
                    Phone u = new PhoneDAO().get(" and id = " + ids, Phone.class, null).get();
                    request.setAttribute("phone", u);
                }
            }
            request.getRequestDispatcher("/views/admin/manage/phone/edit.jsp").forward(request, response);
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
