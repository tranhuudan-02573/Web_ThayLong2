package vn.edu.hcmuaf.fit.controller;
import vn.edu.hcmuaf.fit.model.user.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "resetpass", value = "/resetpass")
public class ResetPass extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = (String) request.getParameter("email");
        String passOld = (String) request.getParameter("pass-old");

        if(!User.hasInfoAccount(email,passOld)){
            request.setAttribute("email", email);

            request.setAttribute("err","Tài khoản chưa được đăng ki hoặc mật khẩu cũ không chính xác");
            request.getRequestDispatcher("views/web/resetpass.jsp").forward(request,response);
            return;
        }
        // has account
        String pass = (String) request.getParameter("pass");
        User.changePass(email,pass);
        request.getRequestDispatcher("/home").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
