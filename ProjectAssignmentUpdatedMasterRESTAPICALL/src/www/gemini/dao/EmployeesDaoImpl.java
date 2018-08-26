package www.gemini.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import www.gemini.model.Employees;

@Repository
public class EmployeesDaoImpl implements EmployeesDao{
	
	
	private static final Logger logger = LoggerFactory.getLogger(EmployeesDaoImpl.class);
	
	@Autowired
	private SessionFactory factory;

	@Override
	public void addRecord(Employees employees) {
		Session session = factory.getCurrentSession();
		session.save(employees);
		logger.info("Employee saved successfully, Employee Details="+employees);
		
	}

	public void removeEmployee(int empsid) {
		
		Session session = factory.getCurrentSession();
		Employees employees=(Employees)session.get(Employees.class, empsid);
	 Query query = session.createQuery("delete from Employees where empsId=:empsId");
	 query.setParameter("empsId", employees.getEmpsid());
	 query.executeUpdate();
	 logger.info("Employee data removed successfully, Employee Details=");

	 
	 
	 
		/*Employees employees2=(Employees)session.get(Employees.class, employees.getEmpsid());
		 employees2.setResourceBillabilityStatus(employees.getResourceBillabilityStatus());
		 session.update(employees2);
		 Query query = session.createQuery("update Employees set resourceBillabilityStatus=:resourceBillabilityStatus where empId=:empId");
		 query.setParameter("resourceBillabilityStatus",employees.getResourceBillabilityStatus()).setParameter("empId", employees.getEmpId());
		 query.executeUpdate();*/
		// session.delete(empsid);
		
	}
	
/*	@Override
	public void update(Employees employees) {
		 Session session = factory.getCurrentSession();
		 Employees employees2=(Employees)session.get(Employees.class, employees.getEmpId());
		 employees2.setResourceBillabilityStatus(employees.getResourceBillabilityStatus());
		 session.update(employees2);
		 Query query = session.createQuery("update Employees set resourceBillabilityStatus=:resourceBillabilityStatus where empId=:empId");
		 query.setParameter("resourceBillabilityStatus",employees.getResourceBillabilityStatus()).setParameter("empId", employees.getEmpId());
		 query.executeUpdate();
		 logger.info("Employee data updated successfully, Employee Details="+employees);
		
	}*/

	@SuppressWarnings("unchecked")
	@Override
	public List<Employees> listEmployess() {
		Session session = factory.getCurrentSession();
		List<Employees> list = session.createQuery("from  Employees").list();
	for (Employees employees : list) {
		logger.info("Employee List::"+employees);
		
	}
	return list;
	}

	@Override
	public Employees getEmpById(Long empId) {
	   Session session = factory.getCurrentSession();
	   Employees employees = (Employees) session.load(Employees.class, new Long(empId));
		logger.info("Employee Data loaded successfully, Employee details="+employees);
		return employees;
	}

	@Override
	public Employees searchEmployeeById(int empsid) {
		Session searchemp=factory.getCurrentSession();
	/*	Employees empsearch=(Employees) searchemp.load(Employees.class, empsid);
		logger.info("Employee Data searched successfully, Employee details="+empsearch);
		System.out.println("1111111111111");
		System.out.println(empsearch);
		System.out.println("2222222222222");
		return empsearch;*/		
		
   Criteria crit = searchemp.createCriteria(Employees.class);
	crit.add(Restrictions.like("empsid", empsid));
	return (Employees) crit.uniqueResult();	
	
	/*Criteria criteria = sessionFactory.getCurrentSession().createCriteria(User.class);
	        criteria.add(Restrictions.like("userName", login));
	        return (User) criteria.uniqueResult();
		// TODO Auto-generated method stub
*/
	}

	
	
	
	

}
