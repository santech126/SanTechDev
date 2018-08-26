package www.gemini.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import www.gemini.model.AccPrjMaster;
import www.gemini.model.Employees;
import www.gemini.service.EmployeesService;



@Controller
public class EmployeesController {
	
	@Autowired
	private EmployeesService service;
	
	
	@RequestMapping(value = "/emp", method =RequestMethod.GET)
	public String listEmp(Model model) {
		model.addAttribute("employees", new Employees());
		//model.addAttribute("MasterValues",new AccPrjMaster());
		return "one";
	}
	
	//For add  emp 
	@SuppressWarnings("unused")
	@RequestMapping(value= "/add", method = RequestMethod.POST)
	public String addEmp(@ModelAttribute("employees") @Valid Employees e,BindingResult result,Model model){
		

if (result.hasErrors()) {
			return "one";	
		}
		
		//new emp, add it
			service.addRecord(e);
			model.addAttribute("listEmployee", service.listEmployess());

			return "two";
			
		}
		

	  @RequestMapping(value = "/master_update", method =RequestMethod.GET)
	  public String master(Model model){
		 model.addAttribute("Master", new AccPrjMaster());
		 
		 return "Master";
		  
	  }

	  
	  @RequestMapping("/remove/{empsid}")
	    public String removeEmp(@PathVariable("empsid") int empsid,Model model){
			

		  service.removeEmp(empsid);
		  model.addAttribute("listEmployee", service.listEmployess());
	        return "two";
	    }
	  

	  

	  
	  
	  // Generate Excell
	  @RequestMapping(value="/getexcel")
		public ModelAndView getExcelFile(ModelAndView views)
		{
			System.out.println("inside pdf generator.");
			List<Employees> obj=service.listEmployess();
		    return new ModelAndView(new GenerateExcell(),"statusList",obj);
		
		}
	  
	  
	
	 
	}	



/*  @RequestMapping(value="/searchEmp,",method=RequestMethod.GET)
	  public String searchEmployee(@ModelAttribute("searchEmp") Long empsid,@Valid Employees e,BindingResult result,Model model ){

	
		  if (result.hasErrors()) {
	 			return "two";	
	 		}
	 	 
           ModelAndView ms=new ModelAndView();
		     Employees searchEmpById = service.searchEmpById(empsid);
             ms.addObject("searchedItem",searchEmpById );
             System.out.println(searchEmpById);
	 		//model.addAttribute("listEmployee", service.listEmployess());
	 		return "two";
	 	

	  }	
  
  */

//  update emp 


	

//===============================================================================================























































/*  Date date = (Date)e.getBirthDate();
  Date date1 = e.getHireDate();
  Date date2 = e.getReginedDate();
  Date date3 = e.getTerminationDate();
  Date date4 = e.getTransferOutDate();
  Date date5 = e.getAllocationEndDate();
  Date date6 = e.getAllocationStartDate();
  Date date7 = e.getBillabilityPlanDate();
  Date date8 = e.getBuJoingDate();
	SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
	String strDate= formatter.format(date);
	String strDate1= formatter.format(date1);
	String strDate2= formatter.format(date2);
	String strDate3= formatter.format(date3);
	String strDate4= formatter.format(date4);
	String strDate5= formatter.format(date5);
	String strDate6= formatter.format(date6);
	String strDate7= formatter.format(date7);
	String strDate8= formatter.format(date8);
	System.out.println(strDate);*/








/*//  update emp 
 @RequestMapping("/edit/{empId}")
    public String editEmp(@PathVariable("empId") Long empId, Model model){
        model.addAttribute("editData", service.getEmpById(empId));
         return "editUser";
        }
 
 @RequestMapping(value="/remove",method=RequestMethod.POST)
 public String update(@ModelAttribute("editData") @Valid Employees e,BindingResult result,Model model ){
	 if (result.hasErrors()) {
		 
			return "editUser";
			
		}
	 
	 else {
		service.rempveEmp(e);
		model.addAttribute("listEmployee", service.listEmployess());
		return "two";
	}

 }		*/

























/*package www.gemini.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import www.gemini.model.AccPrjMaster;
import www.gemini.model.Employees;
import www.gemini.service.EmployeesService;



@Controller
public class EmpSearchController {
	
	@Autowired
	private EmployeesService service;
	
	  @SuppressWarnings("unused")
	  @RequestMapping(value="/searchEmp,",method=RequestMethod.GET)
	  public String searchEmployee(@ModelAttribute("searchEmp") Long empsid,@Valid Employees e,Model model ){

 	 
         ModelAndView ms=new ModelAndView();
		     Employees searchEmpById = service.searchEmpById(empsid);
           ms.addObject("searchedItem",searchEmpById );
           System.out.println(searchEmpById);
	 		//model.addAttribute("listEmployee", service.listEmployess());
	 		return "two";
	 	

	  }	
	
	
	
	
	*/
	
 
