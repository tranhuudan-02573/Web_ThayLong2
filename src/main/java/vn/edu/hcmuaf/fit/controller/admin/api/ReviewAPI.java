package vn.edu.hcmuaf.fit.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.hcmuaf.fit.dao.impl.ReviewDAO;
import vn.edu.hcmuaf.fit.model.review.Review;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/api/review")
public class ReviewAPI extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        String id = request.getParameter("id");

        if (id != null) {
            Review users = new ReviewDAO().get(" and id= " + id, Review.class, null).get();
            mapper.writeValue(response.getOutputStream(), users);
        } else
            mapper.writeValue(response.getOutputStream(), "{}");

    }

}
