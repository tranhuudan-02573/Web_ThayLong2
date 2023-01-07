package vn.edu.hcmuaf.fit.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.hcmuaf.fit.dao.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Brand;
import vn.edu.hcmuaf.fit.until.HttpUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( value = "/api/brand")
public class BrandAPI extends HttpServlet {

    AbstractDAO<Brand> brandAbstractDAO = new AbstractDAO<>("brands");

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
        Brand newModel = HttpUtil.of(request.getReader()).toModel(Brand.class);
//        br.setCreated_at(new Timestamp(System.currentTimeMillis()));
//        br.setUpdated_at(new Timestamp(System.currentTimeMillis()));
//        return insertWithId("insert into brands (name,logo,created_at,updated_at, country)" +
//                        " values(:t.name,:t.logo,:t.created_at,:t.updated_at, :t.country)",
//                br);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Brand newModel = HttpUtil.of(request.getReader()).toModel(Brand.class);
//        b.setUpdated_at(new Timestamp(System.currentTimeMillis()));
//        update("update brands set name = :t.name,logo = :t.logo,updated_at = :t.updated_at, country = :t.country  where id = :t.id", b);

    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Brand newModel = HttpUtil.of(request.getReader()).toModel(Brand.class);
//        brandAbstractDAO.delete("delete from brands  where id = :t.id", b);

    }

}
