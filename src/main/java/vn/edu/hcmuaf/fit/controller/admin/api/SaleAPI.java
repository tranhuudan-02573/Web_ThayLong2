package vn.edu.hcmuaf.fit.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.hcmuaf.fit.dao.impl.ReviewDAO;
import vn.edu.hcmuaf.fit.dao.impl.SaleDAO;
import vn.edu.hcmuaf.fit.model.phone.Sale;
import vn.edu.hcmuaf.fit.model.review.Review;
import vn.edu.hcmuaf.fit.until.HttpUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( value = "/api/sale")
public class SaleAPI extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        int id = Integer.parseInt(request.getParameter("id").trim());
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
//       Color color = colorDAO.get(" and id = " + id, Color.class, null);
//        mapper.writeValue(response.getOutputStream(), color);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Sale sale = HttpUtil.of(request.getReader()).toModel(Sale.class);
        new SaleDAO().insertSale(sale);
        mapper.writeValue(response.getOutputStream(), sale);
    }

    @Override
    protected void doPut(HttpServletRequest  request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Sale sale = HttpUtil.of(request.getReader()).toModel(Sale.class);
        new SaleDAO().updateSale(sale);
        mapper.writeValue(response.getOutputStream(), sale);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Sale sale = HttpUtil.of(request.getReader()).toModel(Sale.class);
        new SaleDAO().deleteSale(sale);
        mapper.writeValue(response.getOutputStream(), sale);
    }

}
