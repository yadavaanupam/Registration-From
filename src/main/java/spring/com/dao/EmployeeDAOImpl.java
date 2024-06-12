package spring.com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import spring.com.model.Employee;
@Repository

public class EmployeeDAOImpl implements EmployeeDAO {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void addEmployee(Employee r) {
		Session session = this.sessionFactory.openSession();
		session.persist(r);
		session.beginTransaction().commit();
		System.out.println("saved successfully");

	}

	@Override
	@Transactional
	public void updateEmployee(Employee r,int id) {
	    Session session = this.sessionFactory.getCurrentSession();
	    Query query = session.createQuery(
	            "UPDATE Employee SET name = :name, gender = :gender, age = :age, salary = :salary WHERE id = :id");
	    query.setParameter("name", r.getName());
	    query.setParameter("gender", r.getGender());
	    query.setParameter("age", r.getAge());
	    query.setParameter("salary", r.getSalary());
	    query.setParameter("id", id);
	    query.executeUpdate();
	}

	
	@Override
	public List<Employee> listEmployees() {
		Session session = sessionFactory.openSession();
		return session.createQuery("from Employee").list();
	}

	@Override
	public Employee getEmployeeById(int id) {
		return (Employee) sessionFactory.openSession().get(Employee.class, id);

	}

	@Override
	public void removeEmployee(int id) {
		Session session = sessionFactory.openSession();
		session.createQuery("DELETE FROM Employee WHERE id = :id").setParameter("id", id).executeUpdate();
		session.beginTransaction().commit();
	}

}
