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




<script type="text/javascript">
 function openPage(pageURL)
 {
 window.location.href = pageURL;
 }
</script>


</head>

<!-- =============================================================================== -->
<body bgcolor="gray">
	<form:form action="add" method="post" commandName="employees">

		<table>
		
		
		<%-- <tr>
					<td><form:label path="empsid">
			    EMPLOYEE ID
					  
						</form:label></td>
					<td><form:input path="empsid" readonly="true" size="8"
							disabled="true" /> <form:hidden path="empsid" /></td>
			</tr> --%>
		    
		    <tr>
				<td><form:label path="empname">
				EMPLOYEE NAME
						<%-- <spring:message text="ProjectName" /> --%>
					</form:label></td>
				<td><form:input path="empname" /></td>
				<td><form:errors path="empname" cssStyle="color:red"></form:errors></td>
			</tr>
			
			   <tr>
				<td><form:label path="emailnD">
				EMAIL ID
						<%-- <spring:message text="ProjectName" /> --%>
					</form:label></td>
				<td><form:input path="emailnD" /></td>
				<td><form:errors path="emailnD" cssStyle="color:red"></form:errors></td>
			</tr>
			
			   <tr>
				<td><form:label path="emplocation">
				EMPLOYEE LOCATION
						<%-- <spring:message text="ProjectName" /> --%>
					</form:label></td>
				<td><form:input path="emplocation" /></td>
				<td><form:errors path="emplocation" cssStyle="color:red"></form:errors></td>
			</tr>
			
			   <tr>
				<td><form:label path="empgrade">
			EMPLOYEE GRADE
						<%-- <spring:message text="ProjectName" /> --%>
					</form:label></td>
				<td><form:input path="empgrade" /></td>
				<td><form:errors path="empgrade" cssStyle="color:red"></form:errors></td>
			</tr>
			
			   <tr>
				<td><form:label path="hiredate">
            HIRE DATE
						<%-- <spring:message text="ProjectName" /> --%>
					</form:label></td>
				<td><form:input path="hiredate" id="datepicker"/></td>
				<td><form:errors path="hiredate" cssStyle="color:red"></form:errors></td>
			</tr>
			
			   <tr>
				<td><form:label path="bujoiningdate">
			BU JOINING DATE
						<%-- <spring:message text="ProjectName" /> --%>
					</form:label></td>
				<td><form:input path="bujoiningdate" id="datepicker1"/></td>
				<td><form:errors path="bujoiningdate" cssStyle="color:red"></form:errors></td>
			</tr>
	<tr><td><input type="submit" value="<spring:message text="SUBMIT"/>" /></td></tr>
</table>

</form:form>	

<center>
<a href="master_update">MASTER UDPATE</a>
</center>

 </body>
</html>