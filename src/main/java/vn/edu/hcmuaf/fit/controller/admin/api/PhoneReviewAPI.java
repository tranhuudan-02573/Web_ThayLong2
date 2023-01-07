package vn.edu.hcmuaf.fit.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.hcmuaf.fit.dao.impl.PhoneDAO;
import vn.edu.hcmuaf.fit.dao.impl.PhoneReviewDAO;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.model.review.PhoneReview;
import vn.edu.hcmuaf.fit.until.HttpUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/api/phone-review")
public class PhoneReviewAPI extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        int id = Integer.parseInt(request.getParameter("id").trim());
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        PhoneReview phoneReview = HttpUtil.of(request.getReader()).toModel(PhoneReview.class);
        new PhoneReviewDAO().insert(phoneReview);
        mapper.writeValue(response.getOutputStream(), phoneReview);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        PhoneReview phoneReview = HttpUtil.of(request.getReader()).toModel(PhoneReview.class);
        new PhoneReviewDAO().delete(phoneReview);
        mapper.writeValue(response.getOutputStream(), phoneReview);
    }

}
