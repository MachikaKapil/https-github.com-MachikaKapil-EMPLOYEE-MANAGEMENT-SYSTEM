<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
EmployeeBean eb = (EmployeeBean)request.getAttribute("eb");
out.println("page belongs to Admin:"+ab.getfName()+"<br>");
%>
<form action = "update" method = "post">
BasicSala:<input type="text" name="bsal" value=<%=eb.getbSal() %>><br>
HRA:<input type ="text" name="hra" value=<%=eb.getHra() %>><br>
DA:<input type="text" name="da" value=<%=eb.getDa() %>><br>
<input type="submit" value="UpdateEmployee">
</form>
</body>
</html>