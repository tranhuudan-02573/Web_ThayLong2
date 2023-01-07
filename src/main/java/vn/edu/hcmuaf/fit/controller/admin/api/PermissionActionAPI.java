package vn.edu.hcmuaf.fit.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import vn.edu.hcmuaf.fit.dao.impl.PermissionActionDAO;
import vn.edu.hcmuaf.fit.model.user.PermissionAction;
import vn.edu.hcmuaf.fit.until.HttpUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/api/permission-action")
public class PermissionActionAPI extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        PermissionAction permissionAction = HttpUtil.of(request.getReader()).toModel(PermissionAction.class);
        new PermissionActionDAO().save(permissionAction);
        mapper.writeValue(response.getOutputStream(), permissionAction);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        PermissionAction permissionAction = HttpUtil.of(request.getReader()).toModel(PermissionAction.class);
        new PermissionActionDAO().update(permissionAction);
        mapper.writeValue(response.getOutputStream(), permissionAction);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        PermissionAction permissionAction = HttpUtil.of(request.getReader()).toModel(PermissionAction.class);
        new PermissionActionDAO().delete(permissionAction);
        mapper.writeValue(response.getOutputStream(), "{}");
    }

}
