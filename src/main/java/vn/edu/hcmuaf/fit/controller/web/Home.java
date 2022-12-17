package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Brand;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.phone.Promot;
import vn.edu.hcmuaf.fit.model.phone.Sale;
import vn.edu.hcmuaf.fit.model.phone.*;

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


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        List<Sale> saleList = new AbstractDAO<Sale>("sales").list(" and now() between start_at and end_at and unit ='%' and value >40 ", Sale.class, null, null);
        List<Sale> saleListCarousel = new AbstractDAO<Sale>("sales").list(" and now() between start_at and end_at ", Sale.class, null, 6);

        List<Brand> brandList = new AbstractDAO<Brand>("brands").list("", Brand.class, null, 14);


        List<Promot> promotList = new AbstractDAO<Promot>("promots").list("", Promot.class, null, 4);


        request.setAttribute("brandList", brandList);
        request.setAttribute("saleList", saleList);
        request.setAttribute("promotList", promotList);
        request.setAttribute("saleListCarousel", saleListCarousel);
        request.getRequestDispatcher("/views/web/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
