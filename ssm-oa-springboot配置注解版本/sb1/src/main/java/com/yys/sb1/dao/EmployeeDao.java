package com.yys.sb1.dao;

import com.yys.sb1.entity.Employee;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository(value = "employeeDao")
public interface EmployeeDao {

    void insert(Employee employee);
    void update(Employee employee);
    void delete(String sn);
    Employee select(String sn);
    List<Employee> selectAll();
    List<Employee> selectByDeptAndPost(@Param("dsn") String dsn, @Param("post") String post);
}
