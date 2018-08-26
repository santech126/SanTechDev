<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page  isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" >
<title>Insert title here</title>
</head>
<body>

 IN EMPLOYEE SEARCH PAGE
 <form:form  action="searchEmp" modelAttribute="EmpSearch" method="POST">
		
		<table>
				<tr>
					<td><form:label path="empsid">
			    SEARCH 
			    ENTER EMPLOYEE ID
				   </form:label></td>
					<td><form:input path="empsid"/></td>
				</tr>
		
	            <tr><td><input type="submit" value="<spring:message text="SUBMIT"/>" /></td></tr>
           <tr><td>
         ${EmpSearchById}
           </td></tr>
       </table>



<div id="searched record">
	<c:if test="${!empty EmpSearchById}"> 
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
<%-- 			<c:forEach items="${EmpSearchById}" var="emp"> --%>
				<tr>
					<td>${EmpSearchById.empsid}</td>
					<td>${EmpSearchById.empname}</td>
		            <td>${EmpSearchById.emailnD}</td>
					<td>${EmpSearchById.emplocation}</td>
					<td>${EmpSearchById.empgrade}</td>
					<td>${EmpSearchById.hiredate}</td>
				    <td>${EmpSearchById.bujoiningdate}</td>
				<td><a href="<c:url value='/changestatus/${EmpSearchById.empsid}' />">CHANGESTATUS</a></td>
				
				</tr>
	<%-- 		</c:forEach> --%>
	

		</table>
		</c:if> 

</div>
</form:form>			

</body>
</html>

































<%-- 
	<form:form  action="adder" commandName="Master" method="post">

		<table>
				<tr>
					<td><form:label path="accName">
			    ACCOUNT NAME
					     <spring:message text="Accname" />
						</form:label></td>
					<td><form:input path="accName" /> <form:hidden path="accName" /></td>
				</tr>
		    
		    <tr>
				<td><form:label path="prjName">
				PROJECT NAME
						<spring:message text="ProjectName" />
					</form:label></td>
				<td><form:input path="prjName" /></td>
				<td><form:errors path="prjName" cssStyle="color:red"></form:errors></td>
			</tr>
			
	<tr><td><input type="submit" value="<spring:message text="SUBMIT"/>" /></td></tr>
</table>
				
		

</form:form>
				 --%>