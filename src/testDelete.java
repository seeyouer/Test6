import action.HibernateSessionFactory;
import model.Student;
import org.hibernate.Session;

public class testDelete {
    public static void main(String[]args){
        Student student=new Student();
        student.setSid(2);
        Session session= HibernateSessionFactory.getSessionFatory().openSession();
        session.beginTransaction();
        session.delete(student);
        session.getTransaction().commit();
    }
}
