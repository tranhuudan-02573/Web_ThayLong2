package vn.edu.hcmuaf.fit.controller.admin.manage.phoneimage;

import vn.edu.hcmuaf.fit.dao.impl.ImageDAO;
import vn.edu.hcmuaf.fit.model.phone.Image;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/manage/phoneimage/edit"})
public class EditHandle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        int ids = 0;
        if (id != null) {
            ids = Integer.parseInt(id.trim());
            if (ids != 0) {
                Image u = new ImageDAO().get(" and id = " + ids, Image.class, null).get();
                request.setAttribute("image", u);
            }
        }

        request.getRequestDispatcher("/views/admin/manage/phoneimage/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
