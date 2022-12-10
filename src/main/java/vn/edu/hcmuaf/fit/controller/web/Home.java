package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.dao.impl.phone.PhoneDAO;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.service.impl.PhoneService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/home"})
public class Home extends HttpServlet {
    PhoneService phoneService = new PhoneService();
    PhoneDAO phoneDAO = new PhoneDAO("phones");
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Phone> phoneList = phoneDAO.list(" and brandId =1",Phone.class,null);

        request.setAttribute("phoneList",phoneList);

        request.getRequestDispatcher("/views/web/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
