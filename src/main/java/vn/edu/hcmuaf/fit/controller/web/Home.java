package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.dao.impl.phone.BrandDAO;
import vn.edu.hcmuaf.fit.dao.impl.phone.PhoneDAO;
import vn.edu.hcmuaf.fit.dao.impl.phone.PromotDAO;
import vn.edu.hcmuaf.fit.dao.impl.phone.SaleDAO;
import vn.edu.hcmuaf.fit.model.phone.Brand;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.phone.Promot;
import vn.edu.hcmuaf.fit.model.phone.Sale;
import vn.edu.hcmuaf.fit.dao.impl.phone.*;
import vn.edu.hcmuaf.fit.model.phone.*;
import vn.edu.hcmuaf.fit.service.impl.PhoneService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns = {"/home"})
public class Home extends HttpServlet {
    PhoneService phoneService = new PhoneService();
    PhoneDAO phoneDAO = new PhoneDAO("phones");

    SaleDAO saleDAO = new SaleDAO("sales");

    BrandDAO brandDAO = new BrandDAO("brands");

    PromotDAO promotDAO = new PromotDAO("promots");

    ModelDAO modelDAO = new ModelDAO("models");



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Phone> phoneList = phoneDAO.list(" and brandId =1", Phone.class, null, null);


        List<Sale> saleList = saleDAO.list(" and now() between start_at and end_at and unit ='%' and value >40 ", Sale.class, null, null);
        List<Sale> saleList2 = saleDAO.list(" and now() between start_at and end_at ", Sale.class, null, 6);

        List<Brand> brandList = brandDAO.list("", Brand.class, null, 14);

        List<Sale> sales = new ArrayList<>();

        Map<Brand, List<Model>> models = new HashMap<>();
        Map<Brand, List<Phone>> phones = new HashMap<>();

        List<Promot> promotList = promotDAO.list("", Promot.class, null, 4);


        Map<Sale, List<Phone>> saleListMap = new HashMap<>();
        Map<Promot, List<Phone>> promotListmap = new HashMap<>();
        for (Promot p : promotList
        ) {

            List<Phone> ps = phoneDAO.joinPhoneCard(" and pp.promotId = " + p.getId() + " and now() between start_at and end_at", Phone.class, null, null);

            if(ps.isEmpty())continue;
            promotListmap.put(p,ps);

        }


        for (Sale sale : saleList
        ) {
            List<Phone> phonesale = phoneDAO.joinPhoneCard(" and p.saleId=" + sale.getId(), Phone.class, null, null);
            if (phonesale.isEmpty()) continue;
            saleListMap.put(sale, phonesale);


        }


        for (Brand b : brandList
        ) {
            List<Model> m = modelDAO.list(" and brandId =" + b.getId(), Model.class, null, null);
            System.out.println(m.size());
            if (m.size() > 2) {
                models.put(b, modelDAO.list(" and brandId =" + b.getId(), Model.class, null, null));
                phones.put(b, phoneDAO.joinPhoneCard("and p.brandId =" + b.getId(), Phone.class, null, null));
            }
        }
        request.setAttribute("promotListmap",promotListmap);
        request.setAttribute("models", models);
        request.setAttribute("phones", phones);
        request.setAttribute("brandList", brandList);
        request.setAttribute("phoneList", phoneList);
        request.setAttribute("saleListMap", saleListMap);
        request.setAttribute("saleList", saleList2);
        request.getRequestDispatcher("/views/web/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    public static void main(String[] args) {
        BrandDAO br = new BrandDAO("brands");
        List<Brand> l = br.list("", Brand.class, null, 14);

        System.out.println(l);

    }
}
