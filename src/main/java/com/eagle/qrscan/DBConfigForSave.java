package com.eagle.qrscan;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;
import java.util.PropertyResourceBundle;
import java.util.ResourceBundle;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.eagle.qrscan.bean.ConstantValues;

@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(entityManagerFactoryRef = "qrAuditEntityManagerFactory", transactionManagerRef = "qrAuditTransactionManager", basePackages = {
        "com.eagle.qrscan.audit.repo"})
public class DBConfigForSave {


    File propertyFile;


    public void OSCheck() {
        String command = "";
        String sOsName = System.getProperty("os.name");

        if (sOsName.startsWith("Windows")) {
            System.out.println("WINDOWS OS");
            propertyFile = new File("D:\\CONFIGURATION\\PSA.conf");

        } else {

            if ((sOsName.startsWith("Linux")) || (sOsName.startsWith("Mac")) || (sOsName.startsWith("HP-UX"))) {
                System.out.println("LINUX OS");
                File catalinaBase = new File(System.getProperty("catalina.base")).getAbsoluteFile();
                propertyFile = new File(catalinaBase, "bin/PSA.conf");
            } else {
                System.out.println("The current operating system '" + sOsName + "' is not supported.");
            }
        }
    }


    @Value("${hibernate.dialect}")
    private String DIALECT;

    @Value("${hibernate.show_sql}")
    private String SHOW_SQL;

    @Value("${entitymanager.packagesToScan}")
    private String PACKAGES_TO_SCAN;

    @Bean(name = "qrAuditDataSource")
    @ConfigurationProperties(prefix = "spring.qraudit.datasource")
    public DataSource dataSource() {
        OSCheck();
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        try {
            InputStream in = new FileInputStream(propertyFile);
            ResourceBundle resource = new PropertyResourceBundle(in);
            ConstantValues.secKey = resource.getString("seckey");
            //dataSource.setDriverClassName(QRGenServiceImp.AESDecrypt(resource.getString("db2.driver"),acccode));
            dataSource.setDriverClassName(resource.getString("db.driver"));
            dataSource.setUrl(ConstantValues.decrypt(resource.getString("db2.url"), ConstantValues.acccode));
            dataSource.setUsername(ConstantValues.decrypt(resource.getString("db2.username"), ConstantValues.acccode));
            dataSource.setPassword(ConstantValues.decrypt(resource.getString("db2.password"), ConstantValues.acccode));

            System.out.println(ConstantValues.decrypt("6Uikub7yTFuczKv9dSM5yJNkaPPjJOboGnqSMckyzZdsBrMmin9zpeAp8Jnyf96O",ConstantValues.acccode));


        } catch (Exception e) {
            e.printStackTrace();
        }
        return dataSource;
    }

    @Bean(name = "qrAuditEntityManagerFactory")
    public LocalSessionFactoryBean sessionFactory() {
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setPackagesToScan("com.eagle.qrscan.audit.model");
        Properties hibernateProperties = new Properties();
        hibernateProperties.put("hibernate.dialect", DIALECT);
        hibernateProperties.put("hibernate.show_sql", SHOW_SQL);
        sessionFactory.setHibernateProperties(hibernateProperties);

        return sessionFactory;
    }

    @Bean(name = "qrAuditTransactionManager")
    public HibernateTransactionManager transactionManager() {
        HibernateTransactionManager transactionManager = new HibernateTransactionManager();
        transactionManager.setSessionFactory(sessionFactory().getObject());
        return transactionManager;
    }
}
