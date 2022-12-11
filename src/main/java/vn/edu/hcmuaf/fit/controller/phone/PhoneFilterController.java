package vn.edu.hcmuaf.fit.controller.phone;

import vn.edu.hcmuaf.fit.dao.impl.phone.PhoneDAO;
import vn.edu.hcmuaf.fit.model.phone.Phone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns = {"/phone-filter"})
public class PhoneFilterController extends HttpServlet {
    PhoneDAO phoneDAO = new PhoneDAO("phones");


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id").trim());
        Map<String, Object> o = new HashMap<>();
        o.put("brandId",id);

        List<Phone> phoneList = phoneDAO.joinPhone(" and p.brandId =:brandId" , Phone.class, o);
        response.getWriter().println(phoneList);
        request.setAttribute("phoneList", phoneList);
        request.getRequestDispatcher("/views/web/productList.jsp").forward(request, response);


    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
