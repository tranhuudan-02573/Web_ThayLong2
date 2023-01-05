package vn.edu.hcmuaf.fit.controller.admin.manage.user;

import vn.edu.hcmuaf.fit.constant.Variable;
import vn.edu.hcmuaf.fit.dao.impl.UserDAO;
import vn.edu.hcmuaf.fit.model.user.User;
import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/manage/user/edit"})
public class EditHandle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String id = request.getParameter("id");
        int ids = 0;
        if (id != null) {
            ids = Integer.parseInt(id.trim());
            if (ids != 0) {
                User u = new UserDAO().get(" and id = " + ids, User.class, null).get();
                request.setAttribute("u", u);
            }
        }
        request.getRequestDispatcher("/views/admin/manage/user/edit.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
