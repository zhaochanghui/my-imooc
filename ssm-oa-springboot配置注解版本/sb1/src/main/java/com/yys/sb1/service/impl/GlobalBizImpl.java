package com.yys.sb1.service.impl;

import com.yys.sb1.service.GlobalBiz;
import com.yys.sb1.dao.EmployeeDao;
import com.yys.sb1.entity.Employee;
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
