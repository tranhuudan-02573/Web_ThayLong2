package vn.edu.hcmuaf.fit.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.hcmuaf.fit.model.phone.Cap;
import vn.edu.hcmuaf.fit.model.phone.Color;
import vn.edu.hcmuaf.fit.until.HttpUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ColorAPI", value = "/api/color")
public class CapAPI extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        int id = Integer.parseInt(request.getParameter("id").trim());
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
//        Color color = colorDAO.get(" and id = " + id, Color.class, null);
//        mapper.writeValue(response.getOutputStream(), color);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Cap cap = HttpUtil.of(request.getReader()).toModel(Cap.class);
        //        pp.setCreated_at(new Timestamp(System.currentTimeMillis()));
//        pp.setUpdated_at(new Timestamp(System.currentTimeMillis()));
//        return insertWithId("insert into caps (cap,name,created_at,updated_at)" +
//                        " values(:t.cap,:t.name,:t.created_at,:t.updated_at)",
//                pp);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Cap cap = HttpUtil.of(request.getReader()).toModel(Cap.class);
//        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
//        update("update caps set cap = :t.cap, name = :t.name,updated_at = :t.updated_at where id = :t.id", c);

    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Cap cap = HttpUtil.of(request.getReader()).toModel(Cap.class);
//        delete("delete from caps  where id = :t.id", c);
    }

}
