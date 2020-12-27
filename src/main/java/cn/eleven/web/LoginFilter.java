package cn.eleven.web;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.logging.LogRecord;

public class LoginFilter implements Filter {
    private String name;

    //初始化的方法，它可以读取配置当中的属性
    public void init(FilterConfig filterConfig) throws ServletException {
        this.name = filterConfig.getInitParameter("name");
    }
    //过滤的方法
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse)servletResponse;
        String url = request.getRequestURI();
        url = url.substring(url.lastIndexOf("/")+1);
        HttpSession session = request.getSession();
        System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        if(session.getAttribute("admin")!=null ||session.getAttribute("doctor")!=null){
            filterChain.doFilter(request,response);
        }else{
            //response以客户端角度来查找jsp页面的位置
            response.sendRedirect(request.getContextPath()+"/login.jsp");
            //request以自己所在的项目为角度来查找jsp页面的位置
           /* request.getRequestDispatcher("/login.jsp").forward(request,response);*/
        }

    }
    //销毁的方法，当过滤器被回收时自动执行的方法
    public void destroy() {

    }
}
