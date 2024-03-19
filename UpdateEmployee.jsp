<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "test.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
String msg = (String)request.getAttribute("msg");
out.println("page Belongs to Admin:"+ab.getfName()+"<br>");
out.println(msg);
%>
<a href = "Employee.html">AddEmployee</a>
<a href = "view">ViewAllEmployee</a>
<a href = "logout">Logout</a>
</body>
</html>