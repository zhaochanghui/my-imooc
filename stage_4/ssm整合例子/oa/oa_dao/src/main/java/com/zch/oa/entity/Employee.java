package com.zch.oa.entity;

public class Employee {

    private String sn;
    private String pwd;
    private String departmentSn;
    private String name;
    private String post;
    private Department department;

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getDepartmentSn() {
        return departmentSn;
    }

    public void setDepartmentSn(String departmentSn) {
        this.departmentSn = departmentSn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "sn='" + sn + '\'' +
                ", pwd='" + pwd + '\'' +
                ", departmentSn='" + departmentSn + '\'' +
                ", name='" + name + '\'' +
                ", post='" + post + '\'' +
                ", department=" + department +
                '}';
    }
}
