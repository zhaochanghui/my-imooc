package com.yys.sb1.conf;

import com.yys.sb1.global.LoginInterceptor;
import org.springframework.beans.BeansException;
import org.springframework.boot.autoconfigure.web.servlet.WebMvcAutoConfiguration;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceView;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * 开启MVC,自动注入spring容器，WebMvcConfigureAdapter：配置视图解析器
 * 当一个类实现了这个接口  ApplicationContextAware之后，这个类就可以方便活的ApplicationContext中的所有的bean
 *
 */

@Configuration
@EnableWebMvc  //等价于  <mvc:annotation-driven />
public class MvcCfg extends WebMvcConfigurerAdapter implements ApplicationContextAware {

    private ApplicationContext applicationContext;   //spring 容器

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

    //静态资源配置
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry){
        //registry.addResourceHandler("/upload").addResourceLocations("file:/D:/workspace/upload/");
    }

    //定义默认请求处理器   <mvc:default-servlet-handler />
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Bean("viewResolver")
    public ViewResolver createViewResolver(){
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setApplicationContext(this.applicationContext);//设置spring 容器
        viewResolver.setCache(false); //取消缓存
        viewResolver.setPrefix("/WEB-INF/pages/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }
    /**
     * 添加拦截器配置
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        /** 店家管理系统拦截部分 **/
        String interceptPath = "/**";
        // 注册拦截器
        InterceptorRegistration loginIR = registry.addInterceptor(new LoginInterceptor());
        // 配置拦截的路径
        loginIR.addPathPatterns(interceptPath);
    }

}
