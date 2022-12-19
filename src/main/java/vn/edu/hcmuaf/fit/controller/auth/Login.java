package vn.edu.hcmuaf.fit.controller.auth;

import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.CookieUntil;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = CookieUntil.get("username", request);
        if (username == null) {
            request.getRequestDispatcher("/login").forward(request, response);
            return;
        }
        SessionUntil.set(request, "username", username);
        request.getRequestDispatcher("/home").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String name = request.getParameter("name");
        String pass = request.getParameter("pass");

        User user =null;
        if (user == null) {
            request.setAttribute("error", "");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession(true);
            session.setAttribute("auth", user);
            response.sendRedirect("index.jsp");
        }


    }
}
