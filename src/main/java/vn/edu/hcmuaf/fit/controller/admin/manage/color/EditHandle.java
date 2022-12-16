package vn.edu.hcmuaf.fit.controller.admin.manage.color;

import vn.edu.hcmuaf.fit.dao.impl.phone.ColorDAO;
import vn.edu.hcmuaf.fit.model.phone.Color;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/manage/color/edit"})
public class EditHandle extends HttpServlet {
    ColorDAO colorDAO = new ColorDAO("colors");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        int ids = 0;
        Color color = new Color();
        if (id != null) {
            ids = Integer.parseInt(id.trim());
            if (ids != 0) color =colorDAO.get(" and id = " + ids, Color.class, null);
        }
        request.setAttribute("color", color);
        request.getRequestDispatcher("/views/admin/manage/color/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
