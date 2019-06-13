package action;

import com.opensymphony.xwork2.ActionSupport;

import model.Admin;
import model.Student;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class UserAction  extends ActionSupport implements ServletRequestAware {


    private Admin admin;
    private Student student;
    private String password;
    private HttpServletRequest request;

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public void validateLog() {//登录校验
        if (admin.getUsername().equals("") ) {
            this.addFieldError("admin.username", "登录名不能为空");
        }
        if (admin.getPassword().equals("")) {
            this.addFieldError("admin.passpord", "密码不能为空");
        }
    }
    public void validateReg() {//注册额校验
        if (admin.getUsername().equals("") ) {
            this.addFieldError("admin.username", "登录名不能为空");
        }
        if (admin.getPassword().equals("")) {
            this.addFieldError("admin.password", "密码不能为空");
        }
        if (!admin.getPassword().equals(password)) {
            this.addFieldError("password", "两次密码不一致");
        }
        Transaction tx = null;
        String hql = "";
        try {
            Session session = HibernateSessionFactory.getSessionFatory().openSession();
            tx = session.beginTransaction();
            hql = "from Admin where username='"+admin.getUsername()+"'";
            Query query = session.createQuery(hql);
            @SuppressWarnings("unchecked")
            List<Admin> list = query.list();
            tx.commit();
            if (list.size() > 0) {
                this.addFieldError("admin.username", "该用户已被注册");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (tx != null) tx = null;
        }
    }
    public void validateAdd() {//注册额校验
        Transaction tx = null;
        String hql = "";
        try {
            Session session = HibernateSessionFactory.getSessionFatory().openSession();
            tx = session.beginTransaction();
            hql = "from Student where sno='"+student.getSno()+"'";
            Query query = session.createQuery(hql);
            @SuppressWarnings("unchecked")
            List<Admin> list = query.list();
            tx.commit();
            if (list.size() > 0) {
                this.addFieldError("student.sno", "该学号已存在");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (tx != null) tx = null;
        }
    }
    public String reg(){
        SessionFactory sf = HibernateSessionFactory.getSessionFatory();
        Session session=sf.openSession();
        Transaction tran=session.beginTransaction();
        session.save(admin);
        tran.commit();
        return SUCCESS;
    }
    public  String log(){
        Transaction tx = null;
        String hql = "";
        try {
            //打开session
            SessionFactory sf = HibernateSessionFactory.getSessionFatory();
            Session session = sf.openSession();
            tx = session.beginTransaction();
            hql = "from Admin where username='"+admin.getUsername()+"'and password='"+admin.getPassword()+"'";
            Query query = session.createQuery(hql);
            System.out.println(admin.getUsername()+admin.getPassword());
            @SuppressWarnings("unchecked")
            List<Admin> list = query.list();
            tx.commit();
            if (list.size() > 0) {
                return SUCCESS;
            } else {
                return "failed";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "failed";
        } finally {
            if (tx != null)
                tx = null;
        }
    }
    public String seek(){
        HttpSession session1 = request.getSession();
        //ArrayList<Student> StudentArrayList =new ArrayList<Student>();
        Transaction tx = null;
        String hql = "";
        try {
            //打开session
            SessionFactory sf = HibernateSessionFactory.getSessionFatory();
            Session session = sf.openSession();
            tx = session.beginTransaction();
            hql = "from Student where department='"+student.getDepartment()+"'and grade='"+student.getGrade()+"'";
            Query query = session.createQuery(hql);
            System.out.println(hql);
            @SuppressWarnings("unchecked")
            List<Student> list = query.list();
            session1.setAttribute("studentList",list);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            return "failed";
        } finally {
            if (tx != null) tx = null;
        }
        return SUCCESS;
    }
    public String fuzzySeek(){
        HttpSession session1 = request.getSession();
        Transaction tx = null;
        String hql = "";
        try {
            SessionFactory sf = HibernateSessionFactory.getSessionFatory();
            Session session = sf.openSession();
            tx = session.beginTransaction();
            hql = "from Student where name like '%"+student.getName()+"%'";
            Query query = session.createQuery(hql);
            System.out.println(hql);
            @SuppressWarnings("unchecked")
            List<Student> list = query.list();
            session1.setAttribute("studentList",list);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            return "failed";
        } finally {
            if (tx != null) tx = null;
        }
        return SUCCESS;
    }
    public String add(){
        SessionFactory sf = HibernateSessionFactory.getSessionFatory();
        Session session=sf.openSession();
        Transaction tran=session.beginTransaction();
        session.save(student);
        tran.commit();
        return SUCCESS;
    }
    public String upStu(){
        SessionFactory sf = HibernateSessionFactory.getSessionFatory();
        Session session=sf.openSession();
        Transaction tran=session.beginTransaction();
        session.update(student);
        tran.commit();
        return SUCCESS;
    }
    public String delStu(){
        Student stu=new Student();
        int id=Integer.parseInt(request.getParameter("id"));
        System.out.println(id);
        stu.setSid(id);
        Session session= HibernateSessionFactory.getSessionFatory().openSession();
        session.beginTransaction();
        session.delete(stu);
        session.getTransaction().commit();
        return SUCCESS;
    }
    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        request=httpServletRequest;
    }
}
