package www.gemini.dao;

import java.util.List;

import www.gemini.model.Employees;

public interface EmployeesDao {

	public void addRecord(Employees employees);

	public void removeEmployee(int empsid);

	public List<Employees> listEmployess();

	public Employees getEmpById(Long empId);

	public Employees searchEmployeeById(int  empsid);
	
	

}
