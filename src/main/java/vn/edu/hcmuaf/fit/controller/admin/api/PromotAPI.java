package vn.edu.hcmuaf.fit.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.hcmuaf.fit.dao.impl.ModelDAO;
import vn.edu.hcmuaf.fit.dao.impl.PromotDAO;
import vn.edu.hcmuaf.fit.model.phone.Model;
import vn.edu.hcmuaf.fit.model.phone.Promot;
import vn.edu.hcmuaf.fit.until.HttpUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( value = "/api/promot")
public class PromotAPI extends HttpServlet {

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
        Promot promot = HttpUtil.of(request.getReader()).toModel(Promot.class);
        new PromotDAO().insertPromot(promot);
        mapper.writeValue(response.getOutputStream(),promot);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Promot promot = HttpUtil.of(request.getReader()).toModel(Promot.class);
        new PromotDAO().updatePromot(promot);
        mapper.writeValue(response.getOutputStream(),promot);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Promot promot = HttpUtil.of(request.getReader()).toModel(Promot.class);
        new PromotDAO().deletePromot(promot);
        mapper.writeValue(response.getOutputStream(),promot);
    }

}
