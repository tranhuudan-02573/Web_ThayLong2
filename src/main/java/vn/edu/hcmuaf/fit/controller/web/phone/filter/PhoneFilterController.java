package vn.edu.hcmuaf.fit.controller.web.phone.filter;

import vn.edu.hcmuaf.fit.dao.impl.phone.*;
import vn.edu.hcmuaf.fit.model.phone.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/phone-filter")
public class PhoneFilterController extends HttpServlet {
    PhoneDAO phoneDAO = new PhoneDAO("phones");
    BrandDAO brandDAO = new BrandDAO("brands");
    ModelDAO modelDAO = new ModelDAO("models");
    SaleDAO saleDAO = new SaleDAO("sales");

    PromotDAO promotDAO = new PromotDAO("promots");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ido = request.getParameter("id");
        int id = 0;
        Model model = null;
        Brand brand = null;
        Map<String, List<Phone>> phones = new HashMap<>();
        int total = phoneDAO.countById("");
        List<Promot> promotList = promotDAO.list("", Promot.class, null, 4);
        List<Model> modelList = new ArrayList<>();
        String sql = "";
        List<Brand> brandList = brandDAO.list("", Brand.class, null, null);

        String name = request.getParameter("name");


        if (ido != null)
            id = Integer.parseInt(ido.trim());
        if (id != 0) {
            if (!"".equals(name) && "brand".equals(name)) {

                total = phoneDAO.countById(" and brandId = " + id);
                brand = brandDAO.get(" and id = " + id, Brand.class, null);
                sql = " and brandId =" + id;
                modelList = modelDAO.list(" and brandId =" + id, Model.class, null, null);
            }
            if (!"".equals(name) && "model".equals(name)) {
                total = phoneDAO.countById(" and modelId = " + id);
                model = modelDAO.get(" and id =" + id, Model.class, null);
                sql = " and modelId =" + id;
            }
        }
        phones.put("tất cả", phoneDAO.joinPhoneCard(sql, Phone.class, null, null));

        for (Promot b : promotList
        ) {
            phones.put(b.getName(), phoneDAO.joinPhoneCard(sql + "  and pp.promotId = " + b.getId(), Phone.class, null, null));
        }
        request.setAttribute("model", model);
        request.setAttribute("brands", brandList);
        request.setAttribute("total", total);
        request.setAttribute("brand", brand);
        request.setAttribute("models", modelList);
        request.setAttribute("phones", phones);
        request.getRequestDispatcher("/views/web/productlist.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
