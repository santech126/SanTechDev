package www.gemini.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import www.gemini.model.Employees;
@Transactional
public interface EmployeesService {
	
	public void addRecord(Employees employees);
	
/*	public void update(Employees employees);
*/
	public List<Employees> listEmployess();

	public Employees getEmpById(Long empId);

	public void removeEmp(int empsid);

	public Employees searchEmpById(int empsid);

}
