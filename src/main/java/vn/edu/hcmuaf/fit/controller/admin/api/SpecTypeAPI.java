package vn.edu.hcmuaf.fit.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.hcmuaf.fit.dao.impl.SpecDAO;
import vn.edu.hcmuaf.fit.dao.impl.SpecTypeDAO;
import vn.edu.hcmuaf.fit.model.phone.Spec;
import vn.edu.hcmuaf.fit.model.phone.SpecType;
import vn.edu.hcmuaf.fit.until.HttpUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( value = "/api/spec-type")
public class SpecTypeAPI extends HttpServlet {

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
        SpecType specType = HttpUtil.of(request.getReader()).toModel(SpecType.class);
        new SpecTypeDAO().insertSpecType(specType);
        mapper.writeValue(response.getOutputStream(), specType);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        SpecType specType = HttpUtil.of(request.getReader()).toModel(SpecType.class);
        new SpecTypeDAO().updateSpecType(specType);
        mapper.writeValue(response.getOutputStream(), specType);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        SpecType specType = HttpUtil.of(request.getReader()).toModel(SpecType.class);
        new SpecTypeDAO().deleteSpecType(specType);
        mapper.writeValue(response.getOutputStream(), specType);
    }

}
