package vn.edu.hcmuaf.fit.controller.web.phone.index;

import vn.edu.hcmuaf.fit.dao.impl.phone.BrandDAO;
import vn.edu.hcmuaf.fit.dao.impl.phone.PhoneDAO;
import vn.edu.hcmuaf.fit.model.phone.Brand;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/")
public class PhoneController extends HttpServlet {
    BrandDAO brandDAO = new BrandDAO("brands");
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        int id = Integer.parseInt(request.getParameter("id").trim());
//        Map<String, Object> o = new HashMap<>();
//        o.put("brandId",id);



//        request.getRequestDispatcher("/views/web/productlist.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public static void main(String[] args) {

        System.out.println(new BrandDAO("brands").list("",Brand.class,null,10));
    }
}
