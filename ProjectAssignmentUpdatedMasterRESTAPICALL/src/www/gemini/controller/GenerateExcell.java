package www.gemini.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import www.gemini.model.AccPrjMaster;
import www.gemini.model.Employees;

public class GenerateExcell extends AbstractExcelView {

	
	
	
	
	@Override
	protected void buildExcelDocument(Map<String, Object> model,
			HSSFWorkbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		@SuppressWarnings("unchecked")
		List<Employees> list = (List<Employees>) model.get("accMasterlist");
		System.out.println("size:" + list.size());
		
		Sheet sheet = workbook.createSheet("EMPLOYEE STATUS LIST");

		Row row = sheet.createRow(0);
		row.createCell(0).setCellValue("Emp ID");
		row.createCell(1).setCellValue("Emp Name");
		row.createCell(2).setCellValue("User Id");
		row.createCell(3).setCellValue("Email Id");
		row.createCell(4).setCellValue("Level");
		row.createCell(5).setCellValue("Grade");
		row.createCell(6).setCellValue("Location");
	/*	row.createCell(7).setCellValue("Hire Date");
		row.createCell(8).setCellValue("Birth Date");
		row.createCell(9).setCellValue("Emp Type");
		row.createCell(10).setCellValue("Emp Unit");
		row.createCell(11).setCellValue("Loaned In");
		row.createCell(12).setCellValue("OnSite");
		row.createCell(13).setCellValue("Pace Sub-BU");
		row.createCell(14).setCellValue("Pace-BU");
		row.createCell(15).setCellValue("Service Line");
		row.createCell(16).setCellValue("Practice");
		row.createCell(17).setCellValue("Parent-BU");
		row.createCell(18).setCellValue("Project Name");
		row.createCell(19).setCellValue("Prj Sub-BU");
		row.createCell(20).setCellValue("Delivery Unit");
		row.createCell(21).setCellValue("Project Country");
		row.createCell(22).setCellValue("Project Region");
		row.createCell(23).setCellValue("Account Name");
		row.createCell(24).setCellValue("Engagement Name");
		row.createCell(25).setCellValue("Allocation Start Date");
		row.createCell(26).setCellValue("Allocation End Date");
		row.createCell(27).setCellValue("FTE");
		row.createCell(28).setCellValue("ResourceBillability Status");
		row.createCell(29).setCellValue("Project Persuit Flag");
		row.createCell(30).setCellValue("Engagement Manager");
		row.createCell(31).setCellValue("Ageing In Days");
		row.createCell(32).setCellValue("Plan Roll Off");
		row.createCell(33).setCellValue("EADM Project");
		row.createCell(34).setCellValue("Primary Skills");
		row.createCell(35).setCellValue("Skill Category");
		row.createCell(36).setCellValue("Skill Competency");
		row.createCell(37).setCellValue("Secondary Skills");
		row.createCell(38).setCellValue("Role");
		row.createCell(39).setCellValue("Supervisor Id");
		row.createCell(40).setCellValue("Supervisor Name");
		row.createCell(41).setCellValue("Gender");
		row.createCell(42).setCellValue("Regined Date");
		row.createCell(43).setCellValue("Termination Date");
		row.createCell(44).setCellValue("Transfer Out Date");
		row.createCell(45).setCellValue("N+1 Id");
		row.createCell(46).setCellValue("N+1 Name");
		row.createCell(47).setCellValue("Fresher");
		row.createCell(48).setCellValue("Fresher Capture Type");
		row.createCell(49).setCellValue("Billability Plan");
		row.createCell(50).setCellValue("Contact Number");
		row.createCell(51).setCellValue("COL");
		row.createCell(52).setCellValue("N+1 Id");
		row.createCell(53).setCellValue("Abscondee");
		row.createCell(54).setCellValue("Billability Plan Date");
		row.createCell(55).setCellValue("L3 Skill");
		row.createCell(56).setCellValue("Dedicated");
		row.createCell(57).setCellValue("AD");
		row.createCell(58).setCellValue("AM");
		row.createCell(59).setCellValue("AD FTE");
		row.createCell(60).setCellValue("AM FTE");
		row.createCell(61).setCellValue("BU Joing Date");
		row.createCell(62).setCellValue("Aging In Month");
		row.createCell(63).setCellValue("Global Grade");
		row.createCell(64).setCellValue("Transformation");
		row.createCell(65).setCellValue("Aging");
*/
		int rownum = 1;

		for (Employees status : list) {

			HSSFRow row1 = (HSSFRow) sheet.createRow(rownum++);
			row1.createCell(0).setCellValue(status.getEmpsid());
			row1.createCell(1).setCellValue(status.getEmpname());
			row1.createCell(2).setCellValue(status.getEmailnD());
			row1.createCell(3).setCellValue(status.getEmplocation());
			row1.createCell(4).setCellValue(status.getEmpgrade());
			row1.createCell(5).setCellValue(status.getHiredate());
			row1.createCell(6).setCellValue(status.getBujoiningdate());
	
/*			row1.createCell(8).setCellValue(status.getBirthDate());
			row1.createCell(9).setCellValue(status.getEmpType());
			row1.createCell(10).setCellValue(status.getEmpUnit());
			row1.createCell(11).setCellValue(status.getLoanedIn());
			row1.createCell(12).setCellValue(status.getOnSite());
			row1.createCell(13).setCellValue(status.getPaceSubBu());
			row1.createCell(14).setCellValue(status.getPaceBu());
			row1.createCell(15).setCellValue(status.getServiceLine());
			row1.createCell(16).setCellValue(status.getPractice());
			row1.createCell(17).setCellValue(status.getParentBu());
			row1.createCell(18).setCellValue(status.getProjectName());
			row1.createCell(19).setCellValue(status.getPrjSubBu());
			row1.createCell(20).setCellValue(status.getDeliveryUnit());
			row1.createCell(21).setCellValue(status.getPrjCountry());
			row1.createCell(22).setCellValue(status.getPrjRegion());
			row1.createCell(23).setCellValue(status.getAccountName());
			row1.createCell(24).setCellValue(status.getEngagementName());
			row1.createCell(25).setCellValue(status.getAllocationStartDate());
			row1.createCell(26).setCellValue(status.getAllocationEndDate());
			row1.createCell(27).setCellValue(status.getFte());
			row1.createCell(28).setCellValue(status.getResourceBillabilityStatus());
			row1.createCell(29).setCellValue(status.getProjectPersuitFlag());
			row1.createCell(30).setCellValue(status.getEngagementManager());
			row1.createCell(31).setCellValue(status.getProjectManager());
			row1.createCell(32).setCellValue(status.getAgeingInDays());
			row1.createCell(33).setCellValue(status.getPlanRollOff());
			row1.createCell(34).setCellValue(status.getEadmProject());
			row1.createCell(35).setCellValue(status.getPrimarySkills());
			row1.createCell(36).setCellValue(status.getSkillCategory());
			row1.createCell(37).setCellValue(status.getSkillCompetency());
			row1.createCell(38).setCellValue(status.getSecondarySkills());
			row1.createCell(39).setCellValue(status.getRole());
			row1.createCell(40).setCellValue(status.getSupervisorId());
			row1.createCell(41).setCellValue(status.getSupervisorName());
			row1.createCell(42).setCellValue(status.getGender());
			row1.createCell(43).setCellValue(status.getReginedDate());
			row1.createCell(44).setCellValue(status.getTerminationDate());
			row1.createCell(45).setCellValue(status.getTransferOutDate());
			row1.createCell(46).setCellValue(status.getnPlusOneId());
			row1.createCell(47).setCellValue(status.getnPlusOneName());
			row1.createCell(48).setCellValue(status.getFresher());
			row1.createCell(49).setCellValue(status.getFresherCaptureType());
			row1.createCell(50).setCellValue(status.getBillabilityPlan());
			row1.createCell(51).setCellValue(status.getContactNo());
			row1.createCell(52).setCellValue(status.getCol());
			row1.createCell(53).setCellValue(status.getAbscondee());
			row1.createCell(54).setCellValue(status.getBillabilityPlanDate());
			row1.createCell(55).setCellValue(status.getL3Skill());
			row1.createCell(56).setCellValue(status.getDedicated());
			row1.createCell(57).setCellValue(status.getAd());
			row1.createCell(58).setCellValue(status.getAm());
			row1.createCell(59).setCellValue(status.getAdFte());
			row1.createCell(60).setCellValue(status.getAmFte());
			row1.createCell(61).setCellValue(status.getBuJoingDate());
			row1.createCell(62).setCellValue(status.getAgingInMonth());
			row1.createCell(63).setCellValue(status.getGlobalGrade());
			row1.createCell(64).setCellValue(status.getTransformation());
			row1.createCell(65).setCellValue(status.getAging());*/

		}

	}
}
