package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.impl.UserDAO;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/info"})
public class UserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/views/admin/profile.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String phone = request.getParameter("phone");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String role = request.getParameter("role");

        User user = new User();
        user.setPhone(phone);
        user.setName(name);
        user.setAddress(address);
        user.setEmail(email);
        user.setGender(Integer.parseInt(gender) == 1);
        user.setPermission(role);

        if (new UserDAO().update(user)) {

            SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
            SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da cap nhat thanh cong");
        } else {
            SessionUntil.set(request, Variable.Global.TYPE.toString(), "error");
            SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "cap nhat that bai");
        }

        response.sendRedirect("/admin/info");
    }
}
