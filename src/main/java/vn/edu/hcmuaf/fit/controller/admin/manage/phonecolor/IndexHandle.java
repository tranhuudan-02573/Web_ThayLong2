package vn.edu.hcmuaf.fit.controller.admin.manage.phonecolor;

import vn.edu.hcmuaf.fit.dao.impl.phone.PhoneColorDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/manage/phonecolor"})
public class IndexHandle extends HttpServlet {

    PhoneColorDAO phoneColor = new PhoneColorDAO("phone_color");


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        List<PhoneColor> colors = phoneColor.list(" GROUP BY phoneId", PhoneColor.class, null, null);
        request.setAttribute("colors", colors);

        request.getRequestDispatcher("/views/admin/manage/phonecolor/index.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public static void main(String[] args) {
        List<PhoneColor> colors = new PhoneColorDAO("phone_color").list(" GROUP BY phoneId", PhoneColor.class, null, null);
        System.out.println(colors.get(0).total());
    }
}
