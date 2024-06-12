package spring.com.dao;

import java.util.List;

import spring.com.model.Employee;

public interface EmployeeDAO {
	public void addEmployee(Employee r);

	public void updateEmployee(Employee r,int id);

	public List<Employee> listEmployees();

	public Employee getEmployeeById(int id);

	public void removeEmployee(int id);

}
