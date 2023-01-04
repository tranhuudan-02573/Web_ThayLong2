package vn.edu.hcmuaf.fit.controller.user;

import vn.edu.hcmuaf.fit.until.CookieUntil;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "logout", value = "/logout")
public class Logout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (SessionUntil.get(request, "personlogin") != null) {
            SessionUntil.delItem(request, "personlogin");
            CookieUntil.add("username", null, 0, response);
            CookieUntil.add("permission", null, 0, response);
            response.sendRedirect("/home");

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
