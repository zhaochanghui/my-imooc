package com.yys.sb1.conf;

import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;

import javax.sql.DataSource;
import java.io.IOException;

@Configuration
public class SqlsessionFactoryConf {

    //mybatis-config.xml的配置文件路径
//    @Value("${mybatis_config_file}")
//    private static String myBatisConfigFile ="mybatis-config.xml";
    //mybatis mapper文件所在路径

    private static String mapperPath;
    @Value("${mapper_path}")
    public void setMapperPath(String mapperPath) {
        SqlsessionFactoryConf.mapperPath = mapperPath;
    }

    //实体类所在package
    @Value("${type_alias_package}")
    private String typeAliasPackage;

    @Autowired
    private DataSource dataSource;


    //创建sqlSessionFactoryBean实例，并且设置configration， 设置mapper映射路径，设置database数据源
    @Bean(name="sessionFactory")
    public SqlSessionFactoryBean crateSqlSessionFactoryBean() throws IOException
    {
        SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
        //sessionFactory.setConfigLocation(new ClassPathResource(myBatisConfigFile)); //设置mybatis configuration的扫描路径
        //添加mapper的扫描路径
        PathMatchingResourcePatternResolver prp = new PathMatchingResourcePatternResolver();
        String pkgSearchPath = ResourcePatternResolver.CLASSPATH_ALL_URL_PREFIX+mapperPath;  //扫描路径
        System.out.println("pkgSearchPath:"+pkgSearchPath);
        sessionFactory.setMapperLocations(prp.getResources(pkgSearchPath));
        sessionFactory.setDataSource(dataSource); //设置datasource
        sessionFactory.setTypeAliasesPackage(typeAliasPackage); //设置实体类的扫描路径  typeAlias
        return sessionFactory;
    }

}
