package com.zch.oa.biz;

import com.zch.oa.entity.Employee;

public interface GlobalBiz {
    Employee login(String sn,String pwd);
    void changePwd(Employee employee);
}
