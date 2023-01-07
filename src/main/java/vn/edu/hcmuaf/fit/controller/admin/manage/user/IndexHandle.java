package vn.edu.hcmuaf.fit.controller.admin.manage.user;

import vn.edu.hcmuaf.fit.dao.impl.PermissionActionDAO;
import vn.edu.hcmuaf.fit.dao.impl.UserDAO;
import vn.edu.hcmuaf.fit.model.user.PermissionAction;
import vn.edu.hcmuaf.fit.model.user.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/manage/user"})
public class IndexHandle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String page = "";
        int ids = 0;
        if (id != null) {
            ids = Integer.parseInt(id);
            if (ids != 0) {
                List<PermissionAction> actions = new PermissionActionDAO().list(" and userId= " + ids, PermissionAction.class, null, null, null, null);
                request.setAttribute("actions", actions);
                User user = new UserDAO().get(" and id=" + ids, User.class, null).get();
                request.setAttribute("user", user);
                page = "/views/admin/manage/permissionAction/index.jsp";

            }
        } else {
            List<User> users = new UserDAO().list("", User.class, null, null, null, null);
            request.setAttribute("users", users);
            page = "/views/admin/manage/user/index.jsp";
        }
        request.getRequestDispatcher(page).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
