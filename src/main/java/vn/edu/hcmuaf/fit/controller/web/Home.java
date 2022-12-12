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

    SaleDAO saleDAO = new SaleDAO("sales");

    BrandDAO brandDAO = new BrandDAO("brands");




    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Phone> phoneList = phoneDAO.list(" and brandId =1",Phone.class,null,null);


List<Sale> saleList = saleDAO.list(" and now() between start_at and end_at",Sale.class,null,6);

List<Brand> brandList =  brandDAO.list("",Brand.class,null,14);



        request.setAttribute("brandList",brandList);
        request.setAttribute("phoneList",phoneList);
        request.setAttribute("saleList",saleList);
        request.getRequestDispatcher("/views/web/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    public static void main(String[] args) {
        BrandDAO br = new BrandDAO("brands");
         List<Brand> l = br.list("",Brand.class,null,14);

        System.out.println(l);

    }
}
