package vn.edu.hcmuaf.fit.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.hcmuaf.fit.model.phone.Color;
import vn.edu.hcmuaf.fit.until.HttpUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(value = "/api/color")
public class ColorAPI extends HttpServlet {

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
        Color color = HttpUtil.of(request.getReader()).toModel(Color.class);
//        pp.setCreated_at(new Timestamp(System.currentTimeMillis()));
//        pp.setUpdated_at(new Timestamp(System.currentTimeMillis()));
//        return insertWithId("insert into colors (name,created_at,updated_at)" +
//                        " values(:t.name,:t.created_at,:t.updated_at)",
//                pp);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Color color = HttpUtil.of(request.getReader()).toModel(Color.class);
//        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
//        update("update colors set name = :t.name,updated_at = :t.updated_at where id = :t.id", c);

    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Color color = HttpUtil.of(request.getReader()).toModel(Color.class);
//        delete("delete from colors  where id =:t.id "
//                , c);
    }

}
