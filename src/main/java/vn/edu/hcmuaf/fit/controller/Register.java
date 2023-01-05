package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.mail.MailVerify;
import vn.edu.hcmuaf.fit.model.user.ConfirmationToken;
import vn.edu.hcmuaf.fit.model.user.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.UUID;

@WebServlet(name = "register", value = "/register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = (String) request.getParameter("email");
        // account exits
        if (User.hasEmail(email)) {
            request.setAttribute("email", email);

            request.setAttribute("messErr", "Tài khoản đã tồn tại vui lòng nhập tài khoản khác");
            request.getRequestDispatcher("views/web/signup.jsp").forward(request,response);
            return;
        }

        String userName = (String) request.getParameter("name");
        String numberPhone = (String) request.getParameter("numberphone");
        String address = (String) request.getParameter("address");
        String pass = (String) request.getParameter("pass");

        User user = new User();
        user.setName(userName);user.setPhone(numberPhone);
        user.setAddress(address);user.setEmail(email);user.setPassword(pass);

        // save info user register
        User.saveUserRegister(user);

        // send active code to email
        String code = UUID.randomUUID().toString();
        ConfirmationToken.saveActiveCode(code);
        MailVerify.send(email, userName, "http://localhost:8080/ActiveEmail?"+"email="+email +"& key="+code);

        // visible alert from email active
        request.setAttribute("messActive", "Vui lòng vào email vừa đăng ký tiến hành kích hoạt tài khoản");
        request.getRequestDispatcher("views/web/signup.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
