package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.user.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Home", value = "/admin/admin")
public class Home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User auth = (User) session.getAttribute("auth");
        if (auth == null || !(auth.getPermissionId() < 2)) response.sendRedirect("../login.jsp");

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
