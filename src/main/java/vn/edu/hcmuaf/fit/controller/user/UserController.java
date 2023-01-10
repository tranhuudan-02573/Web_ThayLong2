package vn.edu.hcmuaf.fit.controller.user;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.impl.UserDAO;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/user-profile"})
public class UserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/web/user.jsp#panel21").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        User u = (User) SessionUntil.get(request, Variable.Global.USER.toString());
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        u.setName(name);
        u.setGender((Integer.parseInt(gender) == 1));
        u.setEmail(email);
        u.setPhone(phone);
        u.setAddress(address);


        if (new UserDAO().update(u)) {
            SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
            SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da cap nhat thanh cong");
        } else {
            SessionUntil.set(request, Variable.Global.TYPE.toString(), "error");
            SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "cap nhat that bai");
        }
        response.sendRedirect("/user-profile");
    }
}
