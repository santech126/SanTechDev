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
	<form:form  action="adder" commandName="Master" method="post">

		<table>
				<tr>
					<td><form:label path="accName">
			    ACCOUNT NAME
					     <%-- <spring:message text="Accname" /> --%>
						</form:label></td>
					<td><form:input path="accName" /> <form:hidden path="accName" /></td>
				</tr>
		    
		    <tr>
				<td><form:label path="prjName">
				PROJECT NAME
						<%-- <spring:message text="ProjectName" /> --%>
					</form:label></td>
				<td><form:input path="prjName" /></td>
				<td><form:errors path="prjName" cssStyle="color:red"></form:errors></td>
			</tr>
			
	<tr><td><input type="submit" value="<spring:message text="SUBMIT"/>" /></td></tr>
</table>
				
		

</form:form>
				
		
<%-- 		
				<tr>
					<td><form:label path="empsid">
			    EMPLOYEE ID
					     <spring:message text="Accname" />
						</form:label></td>
					<td><form:input path="empsid" readonly="true" 
							disabled="true" /> <form:hidden path="empsid" /></td>
				</tr>
		    
		    <tr>
				<td><form:label path="empname">
				EMPLOYEE NAME
						<spring:message text="ProjectName" />
					</form:label></td>
				<td><form:input path="empname" /></td>
				<td><form:errors path="empname" cssStyle="color:red"></form:errors></td>
			</tr>
			
			   <tr>
				<td><form:label path="emailnD">
				PROJECT NAME
						<spring:message text="ProjectName" />
					</form:label></td>
				<td><form:input path="emailnD" /></td>
				<td><form:errors path="emailnD" cssStyle="color:red"></form:errors></td>
			</tr>
			
			   <tr>
				<td><form:label path="emplocation">
				PROJECT NAME
						<spring:message text="ProjectName" />
					</form:label></td>
				<td><form:input path="emplocation" /></td>
				<td><form:errors path="emplocation" cssStyle="color:red"></form:errors></td>
			</tr>
			
			   <tr>
				<td><form:label path="empgrade">
				PROJECT NAME
						<spring:message text="ProjectName" />
					</form:label></td>
				<td><form:input path="empgrade" /></td>
				<td><form:errors path="empgrade" cssStyle="color:red"></form:errors></td>
			</tr>
			
			   <tr>
				<td><form:label path="hiredate">
				PROJECT NAME
						<spring:message text="ProjectName" />
					</form:label></td>
				<td><form:input path="hiredate" id="datepicker"/></td>
				<td><form:errors path="hiredate" cssStyle="color:red"></form:errors></td>
			</tr>
			
			   <tr>
				<td><form:label path="bujoiningdate">
				PROJECT NAME
						<spring:message text="ProjectName" />
					</form:label></td>
				<td><form:input path="bujoiningdate" id="datepicker1"/></td>
				<td><form:errors path="bujoiningdate" cssStyle="color:red"></form:errors></td>
			</tr> --%>

</body>
</html>



