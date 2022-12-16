package vn.edu.hcmuaf.fit.controller.admin.manage.color;

import vn.edu.hcmuaf.fit.dao.impl.phone.ColorDAO;
import vn.edu.hcmuaf.fit.model.phone.Color;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/manage/color"})
public class IndexHandle extends HttpServlet {
    ColorDAO colorDAO = new ColorDAO("colors");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Color> colors = colorDAO.list("", Color.class, null, null);

        request.setAttribute("colors", colors);


        request.getRequestDispatcher("/views/admin/manage/color/index.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
