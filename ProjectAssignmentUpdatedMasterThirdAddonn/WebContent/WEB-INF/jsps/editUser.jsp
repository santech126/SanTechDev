<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
		$("#datepicker1").datepicker();
		$("#datepicker2").datepicker();
		$("#datepicker3").datepicker();
		$("#datepicker4").datepicker();
		$("#datepicker5").datepicker();
		$("#datepicker6").datepicker();
		$("#datepicker7").datepicker();
		$("#datepicker8").datepicker();

	});
</script>

</head>

<!-- =============================================================================== -->
<body bgcolor="gray">
	<form:form action="../update" method="post" commandName="editData">

		<table>
			<c:if test="${!empty editData.empName}">
				<tr>
					<td><form:label path="empId">
							<spring:message text="EmpID" />
						</form:label></td>
					<td><form:input path="empId" readonly="true" size="8"
							disabled="true" /> <form:hidden path="empId" /></td>
				</tr>
			</c:if>
			<tr>
				<td><form:label path="empName">
						<spring:message text="EmpName" />
					</form:label></td>
				<td><form:input path="empName" /></td>
				<td><form:errors path="empName" cssStyle="color:red"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="userId">
						<spring:message text="UserId" />
					</form:label></td>
				<td><form:input path="userId" /></td>
				<td><form:errors path="userId" cssStyle="color:red"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="emailId">
						<spring:message text="EmailId" />
					</form:label></td>
				<td><form:input path="emailId" /></td>
				<td><form:errors path="emailId" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="leve_l">
						<%-- <spring:message text="Level" />
				 --%>
				
				  POST LEVEL
				  </form:label>
				<td><form:select path="leve_l">
						<form:option value="analyst" label="analyst" />
						<form:option value="senior analyst" label="senior analyst" />
						<form:option value="Associate" label="Associate" />
					</form:select></td>
				<%-- <td><form:input path="leve_l" /></td> --%>
				<td><form:errors path="leve_l" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="grade">
						<spring:message text="Grade" />
					</form:label></td>
				<td><form:input path="grade" /></td>
				<td><form:errors path="grade" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="location">
						<%-- <spring:message text="Location" /> --%>
						
						
				LOCATION	
				</form:label>
				<td><form:select path="location">
						<form:option value="Bangalore " label="Bangalore" />
						<form:option value="mumbai" label="mumbai" />
						<form:option value="pune" label="pune" />
						<form:option value="kolkata" label="kolkata" />
						<form:option value="noida" label="noida" />
					</form:select></td>
				<%-- <td><form:input path="location" /></td> --%>
				<td><form:errors path="location" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="hireDate">
						<font color="green"><spring:message text="HireDate" /></font>
					</form:label></td>
				<td><form:input path="hireDate" id="datepicker" /></td>
				<td><form:errors path="hireDate" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="birthDate">
						<font color="green"><spring:message text="BirthDate" /></font>
					</form:label></td>
				<td><form:input path="birthDate" id="datepicker1" /></td>
				<td><form:errors path="birthDate" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="empType">
						<spring:message text="EmpType" />
					</form:label></td>
				<td><form:input path="empType" /></td>
				<td><form:errors path="empType" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="empUnit">
						<spring:message text="EmpUnit" />
					</form:label></td>
				<td><form:input path="empUnit" /></td>
				<td><form:errors path="empUnit" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="loanedIn">
						<spring:message text="LoanedIn" />
					</form:label></td>
				<td><form:input path="loanedIn" /></td>
				<td><form:errors path="loanedIn" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="onSite">
						<spring:message text="OnSite" />
					</form:label></td>
				<td><form:input path="onSite" /></td>
				<td><form:errors path="onSite" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="paceSubBu">
						<%-- 						<spring:message text="PaceSub-BU" />
 --%>				
                PACE SUB BU		
                </form:label>
                <td><form:select path="paceSubBu">
						<form:option value="AppsTwo CSD Service Line" label="AppsTwo CSD Service Line" />
						<form:option value="AppsTwo CSD AD" label="AppsTwo CSD AD" />
						<form:option value="AppsTwo CSD AM" label="AppsTwo CSD AM" />
					</form:select></td>
				<td>
					<%-- <td><form:input path="paceSubBu" /></td> --%>
				<td><form:errors path="paceSubBu" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="paceBu">
						<%-- 	<spring:message text="PaceBU" /> --%>
						
				PACE BU		
				</form:label>
				<td><form:select path="paceBu">
						<form:option value="AppsTwo CSD Service Line"
							label="AppsTwo CSD Service Line" />
						<form:option value="AppsTwo CSD AD" label="AppsTwo CSD AD" />
						<form:option value="AppsTwo CSD AM" label="AppsTwo CSD AM" />
					</form:select></td>

				<%-- <td><form:input path="paceBu" /></td> --%>

				<td><form:errors path="paceBu" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="serviceLine">
						<spring:message text="ServiceLine" />
					</form:label></td>
				<td><form:input path="serviceLine" /></td>
				<td><form:errors path="serviceLine" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="practice">
						<spring:message text="Practice" />
					</form:label></td>
				<td><form:input path="practice" /></td>
				<td><form:errors path="practice" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="parentBu">
						<%-- 						<spring:message text="ParentBU" />
 --%>			
              Parent BU
              </form:label>
				<td><form:select path="parentBu">
						<form:option value="Apps Two CSD AD" label="Apps Two CSD AD" />
						<form:option value="AppsTwo CSD Service Line."
							label="AppsTwo CSD Service Line." />
						<form:option value="AppsTwo CSD Service Line."
							label="AppsTwo CSD Service Line." />
					</form:select></td>

				<%-- <td><form:input path="parentBu" /></td> --%>

				<td><form:errors path="parentBu" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="projectName">
						<spring:message text="ProjectName" />
					</form:label></td>
				<td><form:input path="projectName" /></td>
				<td><form:errors path="projectName" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="prjSubBu">
						<%-- 						<spring:message text="PrjSubBU" />
 --%>	
                  ProjectSubBu
                  </form:label>
				<td><form:select path="prjSubBu">
						<form:option value="AppsTwo CSD Service Line"
							label="AppsTwo CSD Service Line" />
						<form:option value="AppsTwo CSD AD" label="AppsTwo CSD AD" />
						<form:option value="TS - Enabling" label="TS - Enabling" />
						<form:option value="AppsTwo CSD AM" label="AppsTwo CSD AM" />
					</form:select></td>


				<%-- <td><form:input path="prjSubBu" /></td> --%>

				<td><form:errors path="prjSubBu" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="deliveryUnit">
						<spring:message text="DeliveryUnit" />
					</form:label></td>
				<td><form:input path="deliveryUnit" /></td>
				<td><form:errors path="deliveryUnit" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="prjCountry">
						<%-- 	<spring:message text="PrjCountry" /> --%>
					
					ProjectCountry
					</form:label>
				<td><form:select path="prjCountry">
						<form:option value="France [FR]" label="France [FR]" />
						<form:option value="Germany [DE]" label="Germany [DE]" />
						<form:option value="India [IN]" label="India [IN]" />
						<form:option value="Italy [IT]" label="Italy [IT]" />
						<form:option value="Sweden [SE]" label="Sweden [SE]" />
					</form:select></td>

				<%-- 	<td><form:input path="prjCountry" /></td> --%>

				<td><form:errors path="prjCountry" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="prjRegion">
						<%-- 						<spring:message text="PrjRegion" />
 --%>
 
                     ProjectRegion
                     </form:label>
				<td><form:select path="prjRegion">
						<form:option value="India (OBU)" label=" India (OBU)" />
						<form:option value="Germany & Austria" label="Germany & Austria" />
						<form:option value="Italy & EE" label="Italy & EE" />
						<form:option value="Nordic" label="Nordic" />
						<form:option value="France" label="France" />
					</form:select></td>

				<%-- <td><form:input path="prjRegion" /></td> --%>

				<td><form:errors path="prjRegion" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="accountName">
						<spring:message text="AccountName" />
					</form:label></td>
				<td><form:input path="accountName" /></td>
				<td><form:errors path="accountName" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="engagementName">
						<spring:message text="EngagementName" />
					</form:label></td>
				<td><form:input path="engagementName" /></td>
				<td><form:errors path="engagementName" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="allocationStartDate">
						<font color="green"><spring:message
								text="AllocationStartDate" /></font>
					</form:label></td>
				<td><form:input path="allocationStartDate" id="datepicker2" /></td>
				<td><form:errors path="allocationStartDate"
						cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="allocationEndDate">
						<font color="green"> <spring:message
								text="AllocationEndDate" /></font>
					</form:label></td>
				<td><form:input path="allocationEndDate" id="datepicker3" /></td>
				<td><form:errors path="allocationEndDate" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="fte">
						<spring:message text="FTE %" />
					</form:label></td>
				<td><form:input path="fte" /></td>
				<td><form:errors path="fte" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="resourceBillabilityStatus">
				
				ResourceBillabilityStatus 
				
					</form:label>
				<td><form:select path="resourceBillabilityStatus">
						<form:option value="Blocked" label="Blocked" />
						<form:option value="Long Leave" label="Long Leave" />
						<form:option value="Onshore Billable" label="Onshore Billable" />
						<form:option value="Offshore Enabling" label="Offshore Enabling" />
						<form:option value="Shadow" label="Shadow" />
						<form:option value="End Client Billable"
							label="End Client Billable" />
						<form:option value="Deployable Bench" label="Deployable Bench" />

					</form:select></td>
				<td><form:errors path="resourceBillabilityStatus"
						cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="projectPersuitFlag">
						<spring:message text="ProjectPersuitFlag" />
					</form:label></td>
				<td><form:input path="projectPersuitFlag" /></td>
				<td><form:errors path="projectPersuitFlag" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="engagementManager">
						<spring:message text="EngagementManager" />
					</form:label></td>
				<td><form:input path="engagementManager" /></td>
				<td><form:errors path="engagementManager" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="projectManager">
						<spring:message text="ProjectManager" />
					</form:label></td>
				<td><form:input path="projectManager" /></td>
				<td><form:errors path="projectManager" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="ageingInDays">
						<spring:message text="AgeingInDays" />
					</form:label></td>
				<td><form:input path="ageingInDays" /></td>
				<td><form:errors path="ageingInDays" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="planRollOff">
						<spring:message text="PlanRollOff" />
					</form:label></td>
				<td><form:input path="planRollOff" /></td>
				<td><form:errors path="planRollOff" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="eadmProject">
						<spring:message text="EADM Project" />
					</form:label></td>
				<td><form:input path="eadmProject" /></td>
				<td><form:errors path="eadmProject" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="primarySkills">
						<spring:message text="PrimarySkills" />
					</form:label></td>
				<td><form:input path="primarySkills" /></td>
				<td><form:errors path="primarySkills" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="skillCategory">
						<spring:message text="SkillCategory" />
					</form:label></td>
				<td><form:input path="skillCategory" /></td>
				<td><form:errors path="skillCategory" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="skillCompetency">
						<spring:message text="SkillCompetency" />
					</form:label></td>
				<td><form:input path="skillCompetency" /></td>
				<td><form:errors path="skillCompetency" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="secondarySkills">
						<spring:message text="SecondarySkills" />
					</form:label></td>
				<td><form:input path="secondarySkills" /></td>
				<td><form:errors path="secondarySkills" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="role">
			        Role 
			        </form:label></td>
				<td><form:select path="role">
						<form:option value="TechnicalConsultant"
							label="TechnicalConsultant" />
						<form:option value="ApplicationsConsultant"
							label="ApplicationsConsultant" />
						<form:option value="Sr.ApplicationEngineer"
							label="Sr.ApplicationEngineer" />
					</form:select></td>



				<%-- 				<td><form:input path="role" /></td> --%>
				<td><form:errors path="role" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="supervisorId">
						<spring:message text="SupervisorId" />
					</form:label></td>
				<td><form:input path="supervisorId" /></td>
				<td><form:errors path="supervisorId" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="supervisorName">
						<spring:message text="SupervisorName" />
					</form:label></td>
				<td><form:input path="supervisorName" /></td>
				<td><form:errors path="supervisorName" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="gender">
						<spring:message text="Gender" />
					</form:label></td>
				<td><form:input path="gender" /></td>
				<td><form:errors path="gender" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="reginedDate">
						<font color="green"> <spring:message text="ReginedDate" /></font>
					</form:label></td>
				<td><form:input path="reginedDate" id="datepicker4" /></td>
				<td><form:errors path="reginedDate" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="terminationDate">
						<font color="green"><spring:message text="TerminationDate" /></font>
					</form:label></td>
				<td><form:input path="terminationDate" id="datepicker5" /></td>
				<td><form:errors path="terminationDate" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="transferOutDate">
						<font color="green"> <spring:message text="TransferOutDate" /></font>
					</form:label></td>
				<td><form:input path="transferOutDate" id="datepicker6" /></td>
				<td><form:errors path="transferOutDate" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="nPlusOneId">
						<spring:message text="N+1 Id" />
					</form:label></td>
				<td><form:input path="nPlusOneId" /></td>
				<td><form:errors path="nPlusOneId" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="nPlusOneName">
						<spring:message text="N+1 Name" />
					</form:label></td>
				<td><form:input path="nPlusOneName" /></td>
				<td><form:errors path="nPlusOneName" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="fresher">
						<spring:message text="Fresher" />
					</form:label></td>
				<td><form:input path="fresher" /></td>
				<td><form:errors path="fresher" cssStyle="color:red"></form:errors></td>


			</tr>

			<tr>
				<td><form:label path="fresherCaptureType">
						<spring:message text="FresherCaptureType" />
					</form:label></td>
				<td><form:input path="fresherCaptureType" /></td>
				<td><form:errors path="fresherCaptureType" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="billabilityPlan">
						<spring:message text="BillabilityPlan" />
					</form:label></td>
				<td><form:input path="billabilityPlan" /></td>
				<td><form:errors path="billabilityPlan" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="contactNo">
						<spring:message text="ContactNo" />
					</form:label></td>
				<td><form:input path="contactNo" /></td>
				<td><form:errors path="contactNo" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="col">
						<spring:message text="COL" />
					</form:label></td>
				<td><form:input path="col" /></td>
				<td><form:errors path="col" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="abscondee">
						<spring:message text="Abscondee" />
					</form:label></td>
				<td><form:input path="abscondee" /></td>
				<td><form:errors path="abscondee" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="billabilityPlanDate">
						<font color="green"> <spring:message
								text="BillabilityPlanDate" /></font>
					</form:label></td>
				<td><form:input path="billabilityPlanDate" id="datepicker7" /></td>
				<td><form:errors path="billabilityPlanDate"
						cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="l3Skill">
						<spring:message text="L3Skill" />
					</form:label></td>
				<td><form:input path="l3Skill" /></td>
				<td><form:errors path="l3Skill" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="dedicated">
						<spring:message text="Dedicated" />
					</form:label></td>
				<td><form:input path="dedicated" /></td>
				<td><form:errors path="dedicated" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="ad">
						<spring:message text="AD" />
					</form:label></td>
				<td><form:input path="ad" /></td>
				<td><form:errors path="ad" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="am">
						<spring:message text="AM" />
					</form:label></td>
				<td><form:input path="am" /></td>
				<td><form:errors path="am" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="adFte">
						<spring:message text="AD FTE" />
					</form:label></td>
				<td><form:input path="adFte" /></td>
				<td><form:errors path="adFte" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="amFte">
						<spring:message text="AM FTE" />
					</form:label></td>
				<td><form:input path="amFte" /></td>
				<td><form:errors path="amFte" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="buJoingDate">
						<font color="green"> <spring:message text="BU-JoingDate" /></font>
					</form:label></td>
				<td><form:input path="buJoingDate" id="datepicker8" /></td>
				<td><form:errors path="buJoingDate" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="agingInMonth">
						<spring:message text="AgingInMonth" />
					</form:label></td>
				<td><form:input path="agingInMonth" /></td>
				<td><form:errors path="agingInMonth" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="globalGrade">
						<%-- <spring:message text="GlobalGrade" /> --%>
					GlobalGrade
					</form:label>
				<td><form:select path="globalGrade">
						<form:option value="A1" label="A1" />
						<form:option value="A2" label="A2" />
						<form:option value="A3" label="A3" />
						<form:option value="A4" label="A4" />
						<form:option value="A5" label="A5" />
					</form:select></td>


				<%-- <td><form:input path="globalGrade" /></td> --%>
				<td><form:errors path="globalGrade" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="transformation">
						<spring:message text="Transformation" />
					</form:label></td>
				<td><form:input path="transformation" /></td>
				<td><form:errors path="transformation" cssStyle="color:red"></form:errors></td>


			</tr>
			<tr>
				<td><form:label path="aging">
						<spring:message text="Aging" />
					</form:label></td>
				<td><form:input path="aging" /></td>
				<td><form:errors path="aging" cssStyle="color:red"></form:errors></td>


			</tr>

		</table>
		<center>
			<input type="submit" value="<spring:message text="Add Employee"/>" />
		</center>

	</form:form>
</body>
</html>