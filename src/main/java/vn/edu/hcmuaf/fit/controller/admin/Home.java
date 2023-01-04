package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/home"})
public class Home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SessionUntil.set(request, Variable.Global.USER.toString(),new AbstractDAO<User>("users").get(" and id = 2",User.class,null).get());

        User user = (User) SessionUntil.get(request, Variable.Global.USER.toString());

        if (user.getPermission() != null && Integer.parseInt(user.getPermission()) >= 2)
            request.getRequestDispatcher("/views/admin/index.jsp").forward(request, response);
        else
            response.sendRedirect("/home?page=1&different=moi");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
