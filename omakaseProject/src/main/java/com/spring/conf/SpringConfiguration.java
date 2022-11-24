package com.spring.conf;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@PropertySource("classpath:com/spring/conf/db.properties")
@EnableTransactionManagement
public class SpringConfiguration {
	private @Value("${jdbc.driver}") String driver;
	private @Value("${jdbc.url}") String url;
	private @Value("${jdbc.username}") String username;
	private @Value("${jdbc.password}") String password;	
	
	@Bean
    public BasicDataSource dataSource() {
        BasicDataSource basicdataSource = new BasicDataSource();
        basicdataSource.setDriverClassName(driver);
        basicdataSource.setUrl(url);
        basicdataSource.setUsername(username);
        basicdataSource.setPassword(password);
		
		return basicdataSource;
    }
	
	@Bean
    public SqlSessionFactory sqlSessionFactory() throws Exception {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource());
        sqlSessionFactoryBean.setConfigLocation(new ClassPathResource("com/spring/conf/mybatis-config.xml"));
        sqlSessionFactoryBean.setMapperLocations(new ClassPathResource("com/res/dao/resMapper.xml"),
        										 new ClassPathResource("com/member/dao/memberMapper.xml"));
        
        return sqlSessionFactoryBean.getObject();
    }
	
	
	
	@Bean
    public SqlSession sqlSession() throws Exception {
        SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(sqlSessionFactory());
        return sqlSessionTemplate;
    }
	
	@Bean
	public DataSourceTransactionManager transactionManager(){
		return new DataSourceTransactionManager(dataSource());
	}
	
}

/*
@Bean
- return 되는 클래스를 bean으로 생성한다.
- 반드시 메소드의 이름은 id명으로 설정해야 한다
*/