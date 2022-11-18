package vn.edu.hcmuaf.fit.filter;

import vn.edu.hcmuaf.fit.until.SessionUntil;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(filterName = "Auth")
public class Auth implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        request.setAttribute("isLogin", SessionUntil.isLogin((HttpServletRequest) request));
        chain.doFilter(request, response);
    }
}
