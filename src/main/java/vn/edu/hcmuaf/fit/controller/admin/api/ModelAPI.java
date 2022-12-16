package vn.edu.hcmuaf.fit.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.hcmuaf.fit.model.phone.Color;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;

@WebServlet(name = "ColorAPI", value = "/api/color")
public class ModelAPI extends HttpServlet {

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

//        pp.setCreated_at(new Timestamp(System.currentTimeMillis()));
//        pp.setUpdated_at(new Timestamp(System.currentTimeMillis()));
//        return  insertWithId("insert into models (name,created_at,updated_at, img, brandId)" +
//                        " values(:t.name,:t.created_at,:t.updated_at, :t.img, :t.brandId)",
//                pp);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        c.setUpdated_at(new Timestamp(System.currentTimeMillis()));
//        update("update models set name = :t.name,updated_at = :t.updated_at, img = :t.img, brandId = :t.brandId where id = :t.id", c);

    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        delete("delete from models  where id = :t.id" , c);

    }

}
