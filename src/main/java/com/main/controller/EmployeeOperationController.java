package com.main.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.dto.Employee;

@Controller
@RequestMapping("/empOpe")
public class EmployeeOperationController 
{
     
	@GetMapping("/getAllEmployees")
	public String getAllEmployeeDetails(Map<String, Object> map)
	{
		Employee e1 = new Employee();
		 e1.setId(101); e1.setName("Sukanta");e1.setSalary(12000f);e1.setAddress("Bhadrak");
		
		Employee e2 = new Employee();
		e2.setId(102); e2.setName("Raja");e2.setSalary(14000f);e2.setAddress("Bhadrak");
		
		Employee e3 = new Employee();
		e3.setId(103); e3.setName("Manoj");e3.setSalary(15000f);e3.setAddress("Bhadrak");
		
		Employee e4 = new Employee();
		e4.setId(104); e4.setName("Saroj");e4.setSalary(19000f);e4.setAddress("Bhadrak");
		
		Employee e5 = new Employee();
		e5.setId(105); e5.setName("Muktikanta");e5.setSalary(35000f);e5.setAddress("Bhadrak");
		
		map.put("emp", e1);
		map.put("empList", List.of(e1,e2,e3,e4, e5));
		
		return "report_page";
	}
}
