package vn.edu.hcmuaf.fit.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.hcmuaf.fit.model.phone.Phone;
import vn.edu.hcmuaf.fit.until.HttpUtil;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "PhoneAPI", urlPatterns = {"/api/phone"})
public class PhoneAPI extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Phone phone = HttpUtil.of(request.getReader()).toModel(Phone.class);
//        phone = phoneService.get(phone);
//        mapper.writeValue(response.getOutputStream(), phone);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Phone phone = HttpUtil.of(request.getReader()).toModel(Phone.class);
//        phone = phoneService.save(phone);
//        mapper.writeValue(response.getOutputStream(), phone);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Phone phone = HttpUtil.of(request.getReader()).toModel(Phone.class);
//        phone = phoneService.update(phone);
//        mapper.writeValue(response.getOutputStream(), phone);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Phone phone = HttpUtil.of(request.getReader()).toModel(Phone.class);
//        phoneService.delete(phone);
//        mapper.writeValue(response.getOutputStream(), "{}");
    }
}
