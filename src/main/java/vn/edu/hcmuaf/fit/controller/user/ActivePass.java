package vn.edu.hcmuaf.fit.controller.user;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.dao.impl.ConfirmationTokenDAO;
import vn.edu.hcmuaf.fit.dao.impl.UserDAO;
import vn.edu.hcmuaf.fit.mail.MailVerify;
import vn.edu.hcmuaf.fit.model.user.ConfirmationToken;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Timestamp;

@WebServlet(urlPatterns = {"/activepass"})
public class ActivePass extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String key = request.getParameter("key");
        String pass = request.getParameter("pass");
        String userName = request.getParameter("name");
        MailVerify.send(email, userName, email, key, pass);
        new ConfirmationTokenDAO().save(key);
        SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
        SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "kiem tra mail cua ban");
        request.getRequestDispatcher("/views/web/signup.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String key = request.getParameter("key");
        String pass = request.getParameter("pass");
        ConfirmationToken confirmationToken = new AbstractDAO<ConfirmationToken>("confirmationtoken").get(" and token='" + key + "'", ConfirmationToken.class, null).orElse(null);
        if (confirmationToken != null && confirmationToken.getExpired_at().before(new Timestamp(System.currentTimeMillis()))) {
            SessionUntil.set(request, Variable.Global.TYPE.toString(), "error");
            SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "token da het han vui long ban dang nhap lai");
        } else if (confirmationToken != null && confirmationToken.getConfirmed_at() != null) {
            SessionUntil.set(request, Variable.Global.TYPE.toString(), "error");
            SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "token da sd vui long ban dang nhap lai");
        } else {
            new ConfirmationTokenDAO().active(key);
            User user = new UserDAO().get(" and email='" + email + "'", User.class, null).get();
            new UserDAO().updatePass(user, pass);

            SessionUntil.set(request, Variable.Global.TYPE.toString(), "success");
            SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "da cap nhat thanh cong");
            SessionUntil.delItem(request, Variable.Global.USER.toString());
            SessionUntil.set(request, Variable.Global.USER.toString(), user);

        }
        response.sendRedirect("/user-profile");
    }

}