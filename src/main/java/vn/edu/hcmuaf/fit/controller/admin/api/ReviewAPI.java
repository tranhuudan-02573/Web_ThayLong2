package vn.edu.hcmuaf.fit.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.hcmuaf.fit.dao.impl.ModelDAO;
import vn.edu.hcmuaf.fit.dao.impl.ReviewDAO;
import vn.edu.hcmuaf.fit.model.phone.Model;
import vn.edu.hcmuaf.fit.model.review.Review;
import vn.edu.hcmuaf.fit.until.HttpUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( value = "/api/review")
public class ReviewAPI extends HttpServlet {

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
        Review review = HttpUtil.of(request.getReader()).toModel(Review.class);
        new ReviewDAO().save(review);
        mapper.writeValue(response.getOutputStream(), review);

    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Review review = HttpUtil.of(request.getReader()).toModel(Review.class);
        new ReviewDAO().updateReview(review);
        mapper.writeValue(response.getOutputStream(), review);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Review review = HttpUtil.of(request.getReader()).toModel(Review.class);
//        new ReviewDAO().delete(review);
        mapper.writeValue(response.getOutputStream(), review);
    }

}
