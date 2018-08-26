package www.gemini.controller;

import java.util.Iterator;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import www.gemini.model.Employees;
import www.gemini.service.EmployeesService;



@Controller
public class EmpSearchController {
	
	@Autowired
	private EmployeesService service;
	
	@RequestMapping(value = "/searchControl", method =RequestMethod.GET)
	  public String EmpSearchpage(Model model){
		 model.addAttribute("EmpSearch", new Employees());
		 
		 return "EmpSearch";
		  
	  }

	
	
	  @RequestMapping(value="/searchEmp", method = RequestMethod.POST)
	    public String searchEmployee( @Valid @ModelAttribute("EmpSearch")  Employees e, int empsid,BindingResult result,Model model) throws Exception{
	  
		
	    
		  List<Employees> listEmployess = service.listEmployess();
		  
		  Iterator itr=listEmployess.iterator();
		  while(itr.hasNext()){
			  
			  Employees eids=(Employees)itr.next();
			  int empsid2 = eids.getEmpsid();
			  
			  if(empsid2==empsid){
				  System.out.println("1111");
				  Employees searchEmpById = service.searchEmpById(empsid);
				  
				  System.out.println(searchEmpById.toString());
				
				  model.addAttribute("EmpSearchById", searchEmpById);

				  System.out.println("2222");
			  
			return "EmpSearch";
			  				  
			  }
		  }
		return "nullPointer";

	  }
	  
	  
	 
	  @RequestMapping(value="/changestatus/{empsids}",method = RequestMethod.GET) 
	    public String statusChangeEmp(@PathVariable("empsids") int empsid,Model model,BindingResult res) {
			
		  if(res.hasErrors()){
		 System.out.println("binding issue");
			   return "StatusCahnge";
		  }else{
		  
		  
		  model.addAttribute("empsidvalue", empsid);
	      System.out.println("in status change activity");  
	 	  model.addAttribute("status", "status is going to be changed");
	 	  return "StatusChange";
	    }
	  }
	  
	  //===============================================================
	  //Null pointer Exception is caught here itself
	  @ExceptionHandler(value = NullPointerException.class)
	  public String handleNullPointerException(Exception e) {
		
		  System.out.println("Null pointer exception occured");
		  
		  return "nullPointer";
	}
	

	
}
	

