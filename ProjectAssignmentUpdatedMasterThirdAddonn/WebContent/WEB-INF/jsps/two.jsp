<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page  isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>

<!-- FOR FETCHING THE RECORD FROM EXISTING DATABASE  -->
<!-- ================================================================= -->

<center>
<a href="searchControl">SEARCH EMPLOYEE</a>
</center> 

<%-- <form:form  action="searchEmp" commandName="searchEmps" method="post">

		<table>
				<tr>
					<td><form:label path="empsid">
			    SEARCH 
			    ENTER EMPLOYEE ID
						</form:label></td>
					<td><form:input path="empsid"/></td>
				</tr>
		
	<tr><td><input type="submit" value="<spring:message text="SUBMIT"/>" /></td></tr>
</table>
</form:form> 
 --%>

<!-- ================================================================= -->


<!-- FOR DISPLAYING ALL RECORDS FROM THE DATABASE -->
	<c:if test="${!empty listEmployee}"> 
		<table border="">
			<tr>
				<th width="80" bgcolor="red">Emp ID</th>
				<th width="200" bgcolor="red">EmpName</th>
				<th width="80" bgcolor="red">Emp Email ID</th>
				<th width="200" bgcolor="red">Emp Location</th>
				<th width="80" bgcolor="red">Emp Grade</th>
				<th width="200" bgcolor="red">Hire Date</th>
                <th width="200" bgcolor="red">BU Joining Date</th>
				
				<th width="100" bgcolor="red">REMOVE</th>
				
			</tr>
			<c:forEach items="${listEmployee}" var="emp">
				<tr>
					<td>${emp.empsid}</td>
					<td>${emp.empname}</td>
		            <td>${emp.emailnD}</td>
					<td>${emp.emplocation}</td>
					<td>${emp.empgrade}</td>
					<td>${emp.hiredate}</td>
				    <td>${emp.bujoiningdate}</td>
					<td><a href="<c:url value='/remove/${emp.empsid}' />">Remove</a></td>					
				</tr>
			</c:forEach>
		</table>
		</c:if>
		<div align="center">
		<a href="getexcel">Excel File</a>
       </div>
		
	
<%-- <c:if test="${!empty MasterValues }"> 
		<table border="">
			<tr>
				<th width="80" bgcolor="red">accName</th>
				<th width="200" bgcolor="red">prjName</th>
				<th width="100" bgcolor="red">REMOVE</th>
				
			</tr>
			<c:forEach items="${MasterValues}" var="emp">
				<tr>
					<td>${emp.accName}</td>
					<td>${emp.prjName}</td>
		        	<td><a href="<c:url value='/remove/${emp.empsid}' />">Remove</a></td>					
				</tr>
			</c:forEach>
		</table>
		<div align="center"> </c:if> 
		
--%>
	

	

</body>
</html>


