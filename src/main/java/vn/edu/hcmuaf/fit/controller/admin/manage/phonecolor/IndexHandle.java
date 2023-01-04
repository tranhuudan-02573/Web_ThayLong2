package vn.edu.hcmuaf.fit.controller.admin.manage.phonecolor;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.PhoneColor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/manage/phonecolor"})
public class IndexHandle extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        List<PhoneColor> colors = new AbstractDAO<PhoneColor>("phone_color").list(" GROUP BY phoneId", PhoneColor.class, null, null,null, null);
        request.setAttribute("colors", colors);

        request.getRequestDispatcher("/views/admin/manage/phonecolor/index.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
