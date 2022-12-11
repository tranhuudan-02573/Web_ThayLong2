package vn.edu.hcmuaf.fit.filter;

import vn.edu.hcmuaf.fit.dao.impl.phone.BrandDAO;
import vn.edu.hcmuaf.fit.model.phone.Brand;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebFilter(filterName = "/*")
public class HeaderFilter implements Filter {
    BrandDAO brandDAO = new BrandDAO("brands");
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {

        List<Brand> brandList =  brandDAO.list("",Brand.class,null,10);

        request.setAttribute("brandList", brandList);

        chain.doFilter(request, response);
    }
}
