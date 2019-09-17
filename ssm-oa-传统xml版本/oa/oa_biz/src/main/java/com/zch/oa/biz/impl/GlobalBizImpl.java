package com.zch.oa.biz.impl;

import com.zch.oa.biz.GlobalBiz;
import com.zch.oa.dao.EmployeeDao;
import com.zch.oa.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service(value = "globalBiz" )
public class GlobalBizImpl implements GlobalBiz {

    @Resource
    private EmployeeDao employeeDao;

    public Employee login(String sn, String pwd) {
        Employee employee = employeeDao.select(sn);
        if(employee!=null && employee.getPwd().equals(pwd)){
            return employee;
        }
        return null;
    }

    public void changePwd(Employee employee) {
        employeeDao.update(employee);
    }
}
