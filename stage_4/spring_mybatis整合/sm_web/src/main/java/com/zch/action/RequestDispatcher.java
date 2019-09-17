package com.zch.action;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;


public class RequestDispatcher extends GenericServlet {
    ApplicationContext context = null;
    public RequestDispatcher() {
        super();
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        context = new ClassPathXmlApplicationContext("beans.xml");
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String path = request.getServletPath();
        System.out.println(path);

        String beanName = path.substring(1,path.lastIndexOf("/"));
        String methodName = path.substring(path.lastIndexOf("/")+1,path.lastIndexOf("."));

        System.out.println(beanName+" --- "+methodName);

        try {
            Object obj = context.getBean(beanName + "Controller");
            Method method = obj.getClass().getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);

            method.invoke(obj, request, response);
        }catch (Exception e){
            e.printStackTrace();
        }

    }
}
