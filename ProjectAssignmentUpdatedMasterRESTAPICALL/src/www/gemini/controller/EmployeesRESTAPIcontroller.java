package www.gemini.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import www.gemini.model.Employees;
import www.gemini.service.EmployeesService;

@RestController
public class EmployeesRESTAPIcontroller {

	@Autowired
	private EmployeesService service;
	
	
	// REST API CALL TO SERACH ALL EMPLOYEE AVAILALBLE AND RETURN IN JSON FORMAT
	
	@RequestMapping(value= "/emplist", method = RequestMethod.GET)
	public ArrayList<Employees> getEMpList(){
		
/*		Employees es1=new Employees();
		es1.setEmpsid(101);
		es1.setEmpname("amit");
		
		Employees es2=new Employees();
		es2.setEmpsid(102);
		es2.setEmpname("sanjay");
		
		Employees es3=new Employees();
		es3.setEmpsid(103);
		es2.setEmpname("ashok");
		
		Employees es4=new Employees();
		es4.setEmpsid(104);
		es2.setEmpname("anil");
		
		ArrayList<Employees> asl=new ArrayList<Employees>();
		asl.add(es1);
		asl.add(es2);
		asl.add(es3);
		asl.add(es4);
		
		return asl;
		*/
		
		
		List<Employees> listEmployess = service.listEmployess();
		
	    ArrayList<Employees> asl=new ArrayList<Employees>(listEmployess);
	    return asl;
		
	
	}


/*
 * 
 *  REST API CALL TO SEARCH A SPECIFIC EMPLOYEE FROM LIST
 *  we can write HQL query also to return a specific row from database by Empid
*/

	@SuppressWarnings("rawtypes")
	@RequestMapping(value= "/empsearchrest/{empId}", method = RequestMethod.GET)
	public  Employees getEmployeedetails(@PathVariable("empId") int empids){
      
		
		List<Employees> listEmployess = service.listEmployess();
		  
		  Iterator itr=listEmployess.iterator();
		  while(itr.hasNext()){
			  
			  Employees eids=(Employees)itr.next();
			  int empsid2 = eids.getEmpsid();
			  
			  if(empsid2==empids){
				  System.out.println("1111");
				  Employees searchEmpById = service.searchEmpById(empids);
					return searchEmpById;
			  }
				
		  }
		return null;
	
	}
	
	/*
	 * 
	 *  REST API CALL TO update A SPECIFIC EMPLOYEE FROM LIST
	 *  we can write HQL query also to return a specific row from database by Empid
	*/

	@RequestMapping(value= "/empupdaterest/{empId}", method = RequestMethod.PUT)
	public  Employees updateEmployeedetails(@PathVariable("empId") int empids ,@RequestBody Employees empupdate){
      
		
		List<Employees> listEmployess = service.listEmployess();
		  
		  Iterator itr=listEmployess.iterator();
		  while(itr.hasNext()){
			  
			  Employees eids=(Employees)itr.next();
			  int empsid2 = eids.getEmpsid();
			  
			   if(empsid2==empids){
				  System.out.println("1111");
				  Employees searchEmpById = service.searchEmpById(empids);
		         
		          searchEmpById.setEmpname(empupdate.getEmpname());
		          searchEmpById.setEmpgrade(empupdate.getEmpgrade());
		          searchEmpById.setHiredate(empupdate.getHiredate());
		          
	   return searchEmpById;
	  
			  }
				
		  }
		return null;
	
	}



}
