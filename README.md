# dobi-cms
cms管理系统

spring boot + mybatis + shiro + bootstrap

开发步骤：
1.数据库表设计；设计表时，注释最好填写完整。
2.修改resources/generator/generatorConfig.xml，然后运行com.xjp.util.MyBatisGeneratorUtil.java。
3.编写service接口和实现类，均继承BaseService*。常用sql都有，不需要自己实现。
4.编写controller，编写html。
5.API接口文档：http://localhost:8000/swagger-ui.html
6.manage代表是属于后台管理模块


修改项目中localhost:8000 
表element、menu数据固定，不能更改。
修改上传路径
服务项目干细胞三个文件需要上传上去。


1. 更新代码：
cd /root/ivf/dobi-cms
git pull 
2. 打包：
cd cms-admin/
mvn clean package -DskipTests
3. cd target/
java -jar XX.jar

