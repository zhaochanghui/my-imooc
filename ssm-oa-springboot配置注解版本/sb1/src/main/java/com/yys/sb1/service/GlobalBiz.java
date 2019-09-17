package com.yys.sb1.service;

import com.yys.sb1.entity.Employee;

public interface GlobalBiz {
    Employee login(String sn, String pwd);
    void changePwd(Employee employee);
}
