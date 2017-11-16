package com.xjp.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * webapp配置
 *
 * @author xujiping 2017-11-16 11:14
 */
@Configuration
public class MyWebAppConfiguration extends WebMvcConfigurerAdapter{

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        registry.addResourceHandler("/src/main/webapp/**").addResourceLocations("classpath:/");
        super.addResourceHandlers(registry);
    }
}
