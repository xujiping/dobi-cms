# dobi-cms
cms管理系统

spring boot + mybatis + shiro

开发步骤：
1.数据库表设计。
2.修改resources/generator/generatorConfig.xml，然后运行com.xjp.util.MyBatisGeneratorUtil.java。
3.编写service接口和实现类，均继承BaseService*。常用sql都有，不需要自己实现。
4.编写controller，编写html。
