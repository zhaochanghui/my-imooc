package com.yys.sb1.conf;


import com.yys.sb1.util.DESUtil;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 * 配置datasoruce到IOC容器中
 * 2、@MapperScan
 * 作用：指定要变成实现类的接口所在的包，然后包下面的所有接口在编译之后都会生成相应的实现类
 *
 */
@Configuration
@MapperScan("com.yys.sb1.dao")
public class DatasourceConf {
    //读取application.properties中的配置的值
    @Value("${jdbc.driver}")
    private String jdbcDriver;
    @Value("${jdbc.url}")
    private String jdbcUrl;
    @Value("${jdbc.username}")
    private String username;
    @Value("${jdbc.password}")
    private String password;

    /**
     * 生成和spring-dao.xml对应的bean datasource
     */
    @Bean(name="dataSource")
    public DriverManagerDataSource createDatasource()
    {
        //生成datasource实例
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        //跟配置文件一样配置一下信息
        dataSource.setDriverClassName(jdbcDriver);
        dataSource.setUrl(jdbcUrl);
//        dataSource.setUsername(DESUtil.getDecryptString(username));
//        dataSource.setPassword(DESUtil.getDecryptString(password));
        dataSource.setUsername(username);
        dataSource.setPassword(password);

        return dataSource;
    }

}
