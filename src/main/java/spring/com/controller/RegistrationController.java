package spring.com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.com.model.Employee;
import spring.com.service.EmployeeService;
@Controller
public class RegistrationController {

	private EmployeeService employeeService;
	private int myId=0;
	@Autowired(required = true)
	@Qualifier(value = "employeeService")
	public void setEmployeeService(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}

	@RequestMapping("/")
	public String display() {
		return "index";
	}

	@RequestMapping("/searchEmp")
	public String searchEmployee(@RequestParam int id, Model model) {
		Employee emp = employeeService.getEmployeeById(id);
		if (emp != null) {
			model.addAttribute("emp", emp);
			return "done";
		}

		model.addAttribute("id", id);
		return "error";

	}

	@RequestMapping("/find")
	public String searchMethod() {

		return "search";

	}

	@RequestMapping("/viewEmp")
	public String listEmps(Model model) {
		List<Employee> list = employeeService.listEmployees();
		model.addAttribute("list", list);
		return "viewEmp";

	}
	
	@RequestMapping("/deleteEmp/{id}")
	public String deleteEmployee(@PathVariable int id) {
		employeeService.removeEmployee( id);
			return "redirect:/viewEmp";
	}
	@RequestMapping("/updateEmp/{id}")
	public String updateEmployee(@PathVariable int id,Model model) {
		this.myId = id;
		Employee emp=employeeService.getEmployeeById(id);
		model.addAttribute("emp", emp);
		return "update";
	}
	
	@RequestMapping("/updateSave")
	public String updateSave(@ModelAttribute("emp")Employee emp) {
		employeeService.updateEmployee(emp,myId);
		System.out.println("EmployeeRegistrationController.updateSave()");
		return "redirect:/viewEmp";
	}

	@RequestMapping("/registration-form")
	public String model(Model model) {
		model.addAttribute("emp", new Employee());
		return "registration";
	}
	

	@RequestMapping("/registerEmp")
	public String registered(@ModelAttribute Employee emp) {
		employeeService.addEmployee(emp);
		System.out.println(emp);
		System.out.println();
		return "registered";
	}

	
}
