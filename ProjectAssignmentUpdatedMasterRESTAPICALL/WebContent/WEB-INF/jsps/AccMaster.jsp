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

	<c:if test="${!empty MasterValues }"> 
	
		<table border="">
			<tr>
				<th width="80" bgcolor="red">accName</th>
				<th width="200" bgcolor="red">prjName</th>
				
				<th width="100" bgcolor="red">REMOVE</th>
				
			</tr>
			<c:forEach items="${MasterValues}" var="mst">
				<tr>
					<td>${mst.accName}</td>
					<td>${mst.prjName}</td>
		        	<td><a href="<c:url value='/removeMaster/${mst.accId}' />">Remove</a></td>					
				</tr>
			</c:forEach>
		</table>
		<div align="center">
	
<a href="getexcelmaster">Excel File</a>
</div>
	</c:if> 
</body>
</html>