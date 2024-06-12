package spring.com.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spring.com.dao.EmployeeDAO;
import spring.com.model.Employee;
@Service
public class EmployeeServiceImpl implements EmployeeService {
	private EmployeeDAO employeeDAO;
	
	public void setEmployeeDAO(EmployeeDAO employeeDao) {
		this.employeeDAO = employeeDao;
	}

	@Override
	@Transactional
	public void addEmployee(Employee r) {
		this.employeeDAO.addEmployee(r);
		
	}

	@Override
	@Transactional
	public void updateEmployee(Employee r,int id) {
		this.employeeDAO.updateEmployee(r,id);
		
	}

	@Override
	@Transactional
	public List<Employee> listEmployees() {
		// TODO Auto-generated method stub
		return this.employeeDAO.listEmployees();
	}

	@Override
	@Transactional
	public Employee getEmployeeById(int id) {
		return employeeDAO.getEmployeeById(id);
	}

	@Override
	@Transactional
	public void removeEmployee(int id) {
		// TODO Auto-generated method stub
		this.employeeDAO.removeEmployee(id);
		
	}

}

