package action;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateSessionFactory {

    private static SessionFactory sessionFactory;
// 在静态的代码块中创建这个对象
    static {
        // 1:创建Configuration对象，用于读取hibernate.cfg.xml文件
        Configuration config = new Configuration();
        // 默认读取hibernte.cfg.xml
        config.configure();
        // 2:创建SessionFactory对象
        sessionFactory = config.buildSessionFactory();
        }
//3:提供一个静态的方法-返回SessionFactory的实例
    public static SessionFactory getSessionFatory(){
        return sessionFactory;
    }
}