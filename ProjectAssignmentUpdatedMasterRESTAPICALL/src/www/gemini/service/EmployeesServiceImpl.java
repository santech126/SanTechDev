package www.gemini.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import www.gemini.dao.EmployeesDao;
import www.gemini.model.Employees;

@Service
public class EmployeesServiceImpl implements EmployeesService {
	
	@Autowired
	private EmployeesDao dao;
   
	@Transactional
	@Override
	public void addRecord(Employees employees) {
		dao.addRecord(employees);
		
	}
    
	//public void removeEmployee(Employees employees);

	@Transactional                                                 
	@Override
	public void removeEmp(int empsid) {
		dao.removeEmployee(empsid);
		
	}
     
    @Transactional
	@Override
	public List<Employees> listEmployess() {
	   return dao.listEmployess();
	}
    
	@Transactional
	@Override
	public Employees getEmpById(Long empId) {
		return dao.getEmpById(empId);
	}
	@Transactional
	@Override
	public Employees searchEmpById(int empsid) {
		return  dao.searchEmployeeById(empsid);
		
	}
	
	

}
