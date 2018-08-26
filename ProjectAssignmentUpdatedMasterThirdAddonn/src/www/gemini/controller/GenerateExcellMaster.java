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

public class GenerateExcellMaster extends AbstractExcelView {

	@Override
	protected void buildExcelDocument(Map<String, Object> model,
			HSSFWorkbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		@SuppressWarnings("unchecked")
		List<AccPrjMaster> list = (List<AccPrjMaster>) model.get("accMasterlist");
		System.out.println("size:" + list.size());
		
		Sheet sheet = workbook.createSheet("ACCOUNT MASTER LIST");

		Row row = sheet.createRow(0);
		row.createCell(0).setCellValue("ACCOUNT ID");
		row.createCell(1).setCellValue("ACCOUNT NAME");
		row.createCell(2).setCellValue("PROJECT NAME");
		
	/*	row.createCell(7).setCellValue("Hire Date");
		row.createCell(8).setCellValue("Birth Date");
*/
		
		int rownum = 1;

		for (AccPrjMaster status : list) {

			HSSFRow row1 = (HSSFRow) sheet.createRow(rownum++);
			
			row1.createCell(0).setCellValue(status.getAccId());
			row1.createCell(1).setCellValue(status.getAccName());
			row1.createCell(2).setCellValue(status.getPrjName());

/*			row1.createCell(8).setCellValue(status.getBirthDate());
			row1.createCell(9).setCellValue(status.getEmpType());
*/
			
		}

	}
}
