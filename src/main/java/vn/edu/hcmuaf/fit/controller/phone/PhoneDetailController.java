                                                                                                                                package vn.edu.hcmuaf.fit.controller.phone;

import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.service.impl.PhoneService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/detail"})
public class PhoneDetailController extends HttpServlet {

    PhoneService phoneService  = new PhoneService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            int id = Integer.parseInt(request.getParameter("id").trim());
            Phone phone = phoneService.getById(id);

            request.setAttribute("phone",phone);

            request.getRequestDispatcher("/views/web/product.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
