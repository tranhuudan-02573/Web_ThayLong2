package vn.edu.hcmuaf.fit.controller.web.user;

import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "UserController", urlPatterns = {"/user-profile"})
public class UserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User u = (User) SessionUntil.get(request, "USER");
        if (u == null) {
            u = new User();
            u.setCarts(new ArrayList<>());
            u.setWishs(new ArrayList<>());
            SessionUntil.set(request, "USER", u);
        }


        request.getRequestDispatcher("/views/web/user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
