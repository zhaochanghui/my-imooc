package com.yys.sb1;


import com.yys.sb1.entity.Department;
import com.yys.sb1.service.DepartmentBiz;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ServiceTest {

    @Autowired
    private DepartmentBiz departmentBiz;

    @Test
    public void demo2()
    {
        Department department = departmentBiz.get("1");
        System.out.println(department);
    }
}
