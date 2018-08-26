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
import www.gemini.service.AccPrjmasterService;

@Controller
public class AccPrjMasterController {

	

		  
	@Autowired
	private AccPrjmasterService service;
	
	//For add  Master table
	@SuppressWarnings("unused")
	@RequestMapping(value= "/adder", method = RequestMethod.POST)
	public String addEmp(@ModelAttribute("Master") @Valid AccPrjMaster e,BindingResult result,Model model){
		
		if (result.hasErrors()) {
			return "one";
			
		}
//master table record addition 
		service.addRecord(e);
		model.addAttribute("MasterValues", service.listMasterRecords());

			return "AccMaster";
		}
		
	
	
	  // Generate Excell
	  @RequestMapping(value="/getexcelmaster")
		public ModelAndView getExcelFile(ModelAndView views)
		{
			System.out.println("inside pdf generator.");
			List<AccPrjMaster> obj=service.listMasterRecords();
		    return new ModelAndView(new GenerateExcellMaster(),"accMasterlist",obj);
		
		}
	  
	  
	  @RequestMapping("/removeMaster/{accId}")
	    public String removeEmp(@PathVariable("accId") int accId,Model model){
		  service.removeMaster(accId);
		  model.addAttribute("accMasterlist", service.listMasterRecords());
		  System.out.println("11111");
	        return "AccMaster";
	  }
		

	  /*@RequestMapping("/remove/{empsid}")
	    public String removeEmp(@PathVariable("empsid") int empsid,Model model){
			

		  service.removeEmp(empsid);
		  model.addAttribute("listEmployee", service.listEmployess());
	        return "two";
	    }
	  */
	  
}

