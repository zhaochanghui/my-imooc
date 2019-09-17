package com.zch.oa.controller;

import com.zch.oa.biz.ClaimVoucherBiz;
import com.zch.oa.dto.ClaimVoucherInfo;
import com.zch.oa.entity.DealRecord;
import com.zch.oa.entity.Employee;
import com.zch.oa.global.Contant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller("claimVoucherController")
@RequestMapping("/claim_voucher")
public class ClaimVoucherController {

    @Autowired
    ClaimVoucherBiz claimVoucherBiz;


    //向页面传递数据，map通用性更好
    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("items", Contant.getItems());
        map.put("info",new ClaimVoucherInfo());
        return "/claimvoucher/add";
    }

    //注意，参数ClaimVoucherInfo info 不加注解的话，得和toAdd方法map['info'] 这个info保持一致
    @RequestMapping("/add")
    public String add(HttpSession session,ClaimVoucherInfo info){
        Employee employee = (Employee) session.getAttribute("employee");
        info.getClaimVoucher().setCreateSn(employee.getSn());
        claimVoucherBiz.save(info.getClaimVoucher(),info.getItems());
        return "redirect:deal";
    }

    @RequestMapping("/detail")
    public String detail(int id,Map<String,Object> map)
    {

        map.put("claimVoucher",claimVoucherBiz.get(id));
        System.out.println(claimVoucherBiz.get(id));

        map.put("items",claimVoucherBiz.getItems(id));
       // System.out.println(claimVoucherBiz.getItems(id));

        map.put("records",claimVoucherBiz.getRecords(id));
        System.out.println(claimVoucherBiz.getRecords(id));
        return "/claimvoucher/detail";
    }


    @RequestMapping("/self")
    public String self(HttpSession session,Map<String,Object> map)
    {
       Employee employee = (Employee) session.getAttribute("employee");
       map.put("list",claimVoucherBiz.getForSelf(employee.getSn()));
       return "/claimvoucher/self";
    }

    @RequestMapping("/deal")
    public String deal(HttpSession session,Map<String,Object> map)
    {
        Employee employee = (Employee) session.getAttribute("employee");
        map.put("list",claimVoucherBiz.getForDeal(employee.getSn()));
        return "/claimvoucher/deal";
    }



    //向页面传递数据，map通用性更好
    @RequestMapping("/to_update")
    public String toUpdate(int id,Map<String,Object> map){
        map.put("items", Contant.getItems());
        ClaimVoucherInfo info  = new ClaimVoucherInfo();
        info.setClaimVoucher(claimVoucherBiz.get(id));
        info.setItems(claimVoucherBiz.getItems(id));
        map.put("info",info);
        return "/claimvoucher/update";
    }

    //注意，参数ClaimVoucherInfo info 不加注解的话，得和toAdd方法map['info'] 这个info保持一致
    @RequestMapping("/update")
    public String update(HttpSession session,ClaimVoucherInfo info){
        Employee employee = (Employee) session.getAttribute("employee");
        info.getClaimVoucher().setCreateSn(employee.getSn());
        claimVoucherBiz.update(info.getClaimVoucher(),info.getItems());
        return "redirect:deal";
    }

    @RequestMapping("/submit")
    public String submit(int id){
        claimVoucherBiz.submit(id);
        return "redirect:deal";
    }

    //向页面传递数据，map通用性更好
    @RequestMapping("/to_check")
    public String toCheck(int id,Map<String,Object> map){
        map.put("claimVoucher",claimVoucherBiz.get(id));
        map.put("items",claimVoucherBiz.getItems(id));
        map.put("records",claimVoucherBiz.getRecords(id));

        DealRecord dealRecord = new DealRecord();
        dealRecord.setClaimVoucherId(id);
        map.put("record",dealRecord);

        return "/claimvoucher/check";
    }

    //注意，参数ClaimVoucherInfo info 不加注解的话，得和toAdd方法map['info'] 这个info保持一致
    @RequestMapping("/check")
    public String check(HttpSession session,DealRecord dealRecord){
        Employee employee = (Employee) session.getAttribute("employee");
        dealRecord.setDealSn(employee.getSn());
        claimVoucherBiz.deal(dealRecord);
        return "redirect:deal";
    }


}
