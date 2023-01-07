package vn.edu.hcmuaf.fit.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.hcmuaf.fit.dao.impl.SaleDAO;
import vn.edu.hcmuaf.fit.dao.impl.SpecDAO;
import vn.edu.hcmuaf.fit.model.phone.Sale;
import vn.edu.hcmuaf.fit.model.phone.Spec;
import vn.edu.hcmuaf.fit.until.HttpUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( value = "/api/spec")
public class SpecAPI extends HttpServlet {

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
        Spec spec = HttpUtil.of(request.getReader()).toModel(Spec.class);
        new SpecDAO().insertSpec(spec);
        mapper.writeValue(response.getOutputStream(), spec);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Spec spec = HttpUtil.of(request.getReader()).toModel(Spec.class);
        new SpecDAO().updateSpec(spec);
        mapper.writeValue(response.getOutputStream(), spec);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Spec spec = HttpUtil.of(request.getReader()).toModel(Spec.class);
        new SpecDAO().deleteSpec(spec);
        mapper.writeValue(response.getOutputStream(), spec);    }

}
