package vn.edu.hcmuaf.fit.controller.user;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.impl.ConfirmationTokenDAO;
import vn.edu.hcmuaf.fit.dao.impl.UserDAO;
import vn.edu.hcmuaf.fit.mail.MailVerify;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

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

        request.getRequestDispatcher("/views/web/signup.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String userName = request.getParameter("name");
        String numberPhone = request.getParameter("phone");
        String address = request.getParameter("address");
        String pass = request.getParameter("pass");

        if (new UserDAO().hasPhone(numberPhone)) {
            request.setAttribute("name", userName);
            request.setAttribute("address", address);
            request.setAttribute("email", email);
            request.setAttribute("error1", "sdt đã tồn tại vui lòng nhập sdt khác");
        }
        if (new UserDAO().hasEmail(email)) {
            request.setAttribute("name", userName);
            request.setAttribute("address", address);
            request.setAttribute("phone", numberPhone);
            request.setAttribute("error2", "email đã tồn tại vui lòng nhập email khác");
        }
        if (!new UserDAO().hasPhone(numberPhone) && !new UserDAO().hasEmail(email)) {
            User user = new User();
            user.setName(userName);
            user.setPhone(numberPhone);
            user.setAddress(address);
            user.setEmail(email);
            user.setPassword(pass);
            new UserDAO().save(user);
            String code = UUID.randomUUID().toString();
            MailVerify.send(email, userName, email, code);
            new ConfirmationTokenDAO().save(code);
            SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
            SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "kiem tra mail cua ban");
        }
        request.getRequestDispatcher("/views/web/signup.jsp").forward(request, response);
    }

}
