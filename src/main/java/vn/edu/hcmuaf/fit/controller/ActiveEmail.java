package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.user.ConfirmationToken;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Timestamp;

@WebServlet(urlPatterns = {"/ActiveEmail"}, name = "ActiveEmail")
public class ActiveEmail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = (String) request.getParameter("email");
        String key = (String) request.getParameter("key");
            String sql = " and token='" + key + "'";

        ConfirmationToken confirmationToken = new AbstractDAO<ConfirmationToken>("confirmationtoken").get(sql, ConfirmationToken.class, null).orElse(null);
        if (confirmationToken!=null&&confirmationToken.getExpired_at().after(new Timestamp(System.currentTimeMillis()))) {

            ConfirmationToken.delActiveCode(key);
            if (email != null)
                User.active(email);
        } else {
            SessionUntil.set(request, Variable.Global.TYPE.toString(), "error");
            SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "token da het han vui long ban dang nhap lai");

        }
        response.sendRedirect("/home?page=1&different=moi");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public static void main(String[] args) {
        String sql = " and token='" + "key" + "'";

        ConfirmationToken confirmationToken = new AbstractDAO<ConfirmationToken>("confirmationtoken")
                .get(sql, ConfirmationToken.class, null).orElse(null);
        if (confirmationToken!=null&&confirmationToken.getExpired_at().after(new Timestamp(System.currentTimeMillis()))) {
            System.out.println("dă");
        } else {  System.out.println("d11111ă");
//            SessionUntil.set(request, Variable.Global.TYPE.toString(), "error");
//            SessionUntil.set(request, Variable.Global.MESSAGE.toString(), "token da het han vui long ban dang nhap lai");

        }
    }
}
