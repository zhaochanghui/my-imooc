package com.yys.sb1.global;

//登录拦截器，很多url需要登录才能操作，限制

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {


    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        System.out.println("测试中文.....");
       String url = httpServletRequest.getRequestURI();
       if(url.toLowerCase().indexOf("login")>=0){  //登录地址可以直接访问
           System.out.println("包含login.....");
           return true;
       }

        HttpSession session = httpServletRequest.getSession();
       if(session.getAttribute("employee")!=null){  //表示已经登录了
           System.out.println("session存在.....");
           return true;
       }

       httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/to_login");
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
