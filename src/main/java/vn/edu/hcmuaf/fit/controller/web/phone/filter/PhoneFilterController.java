package vn.edu.hcmuaf.fit.controller.web.phone.filter;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns = {"/phone-filter"})
public class PhoneFilterController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ido = request.getParameter("id");
        int id = 0;
        String name = request.getParameter("name");
        int total = new AbstractDAO<Phone>("phones").countById("");
        List<Phone> phones = new AbstractDAO<Phone>("phones").list("", Phone.class, null, null);
        List<Brand> brandList = new AbstractDAO<Brand>("brands").list("", Brand.class, null, null);


        if (ido != null)
            id = Integer.parseInt(ido.trim());
        if (id != 0) {
            if (!"".equals(name) && "brand".equals(name)) {
                phones = new AbstractDAO<Phone>("phones").list(" and brandId="+id, Phone.class, null, null);
                Brand brand = new AbstractDAO<Brand>("brands").get(" and id = " + id, Brand.class, null).get();
                request.setAttribute("brand", brand);
            }
            if (!"".equals(name) && "model".equals(name)) {
                phones = new AbstractDAO<Phone>("phones").list(" and modelId="+id, Phone.class, null, null);
                Model model = new AbstractDAO<Model>("models").get(" and id =" + id, Model.class, null).get();
                request.setAttribute("model", model);
            }
        }
        List<Promot> promotList = new AbstractDAO<Promot>("promots").list("", Promot.class, null, 4);

        request.setAttribute("brands", brandList);
        request.setAttribute("promotList", promotList);
        request.setAttribute("total", total);
        request.setAttribute("phones", phones);
        request.getRequestDispatcher("/views/web/productlist.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
