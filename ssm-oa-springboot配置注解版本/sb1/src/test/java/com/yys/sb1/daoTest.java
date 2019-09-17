package com.yys.sb1;

import com.yys.sb1.dao.DepartmentDao;
import com.yys.sb1.entity.Department;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest  //表示需要用到springboot测试工具类
public class daoTest {

    @Resource
    private DepartmentDao departmentDao;

    @Test
    public void demo1()
    {
        List<Department> list = departmentDao.selectAll();
        Department department = departmentDao.select("1");
        System.out.println(list);
    }

}
