package com.zch.oa.controller;

import com.zch.oa.biz.GlobalBiz;
import com.zch.oa.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller(value = "globalController")
public class GlobalController {

    @Autowired
    private GlobalBiz globalBiz;

    @RequestMapping(value = "/to_login")
    public String toLogin()
    {
        return "/login";
    }


    @RequestMapping("/login")
    public String login(@RequestParam String sn, @RequestParam String pwd, HttpSession session)
    {
        Employee employee = globalBiz.login(sn,pwd);
        if(employee==null){
            return "redirect:to_login";
        }else {

            session.setAttribute("employee", employee);
            return "redirect:self";
        }
    }

    //个人信息
    @RequestMapping(value = "/self")
    public String self()
    {
        return "/employee/self";
    }

    //退出
    @RequestMapping(value = "/quit")
    public String quit(HttpSession session)
    {
        session.setAttribute("employee",null);
        return "redirect:to_login";
    }


    //修改密码
    @RequestMapping(value = "/to_chanagepwd")
    public String toChangePwd(HttpSession session)
    {
        return "/employee/changepwd";
    }

    @RequestMapping(value = "changepwd")
    public String changePwd(@RequestParam String old,@RequestParam String new1,@RequestParam String new2, HttpSession session)
    {
        Employee employee = (Employee) session.getAttribute("employee");
        if(employee.getPwd().equals(old)){
            if(new1.equals(new2)){
                employee.setPwd(new1);
                globalBiz.changePwd(employee);
                return "redirect:self";//最好有个成功提示页面，这里不做了，直接跳到self
            }
        }
        return "redirect:to_chanagepwd";
    }

    @RequestMapping("aa")
    @ResponseBody
    public String aa()
    {
        return "我的";
    }
}
