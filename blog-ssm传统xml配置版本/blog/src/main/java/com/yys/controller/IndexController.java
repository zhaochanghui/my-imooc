package com.yys.controller;

import com.yys.entity.Category;
import com.yys.service.CategoryService;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.File;
import java.util.List;
import java.util.UUID;

@Controller(value = "indexController")
public class IndexController {



    @Autowired
    CategoryService categoryService;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String home(HttpServletRequest request)
    {
        return "redirect:home/article_index";
    }

    @RequestMapping(value = "/out",method = RequestMethod.GET)
    @ResponseBody
    public String out(HttpServletRequest request)
    {
        Category category = categoryService.select(2);
        System.out.println(category);
        System.out.println(request.getParameter("name"));
        return "输出"+request.getParameter("name");
    }

    @RequestMapping(value = "/to_login",method = RequestMethod.GET)
    public String tologin()
    {
        return "login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(@Param("name") String name,@Param("pwd") String pwd,HttpSession session)
    {
       if(name.equals("admin") && pwd.equals("615331")){
           session.setAttribute("auth",name);
           return "redirect:article/list";
       }
       return "redirect:to_login";
    }
    @RequestMapping(value = "/loginout",method = RequestMethod.GET)
    public String login(HttpSession session)
    {
        session.setAttribute("auth",null);
        return "redirect:to_login";
    }

    @RequestMapping("to_file")
    public String toFile(){
        return "/home/to_file";
    }



}
