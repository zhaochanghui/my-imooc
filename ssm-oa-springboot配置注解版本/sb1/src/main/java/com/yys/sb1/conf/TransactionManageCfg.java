package com.yys.sb1.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.TransactionManagementConfigurer;

import javax.sql.DataSource;

/*
实现配置(xml中配置的基于注解的声明式事务)： <tx:annotation-driven transaction-manager="transactionManager" />
首先使用注解@EnableTransactionManage 开启事务支持
在service方法上添加 @Transactional便可
 */
@Configuration
@EnableTransactionManagement
public class TransactionManageCfg implements TransactionManagementConfigurer {
    //注入DataSourceConfiguration里边的datasource,通过createDataSource()获取
    @Autowired
    private DataSource dataSource;

    //关于事务管理，需要返回PlatformTransactionManager 的实现
    @Override
    public PlatformTransactionManager annotationDrivenTransactionManager() {
        return new DataSourceTransactionManager(dataSource);
    }
}
