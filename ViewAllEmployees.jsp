<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*,test.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
@SuppressWarnings("unchecked")
ArrayList<EmployeeBean> al = (ArrayList<EmployeeBean>)session.getAttribute("alist");
out.println("page belongs to Admin:"+ab.getfName()+"<br>");
if(al.size()==0)
{
	out.println("employees not Available...<br>");
}
else
{
	Iterator<EmployeeBean> it = al.iterator();
	while(it.hasNext())
	{
		EmployeeBean eb = (EmployeeBean)it.next();
		out.println(eb.geteId()+"&nbsp&nbsp"+eb.geteName()+"&nbsp&nbsp"+eb.geteDesg()+"&nbsp&nbsp"
		+eb.getbSal()+"&nbsp&nbsp"+eb.getHra()+"&nbsp&nbsp"+eb.getDa()+"&nbsp&nbsp"
				+eb.getTotSal()+"&nbsp&nbsp"+"<a href ='edit'>Edit</a>"+"&nbsp&nbsp"+"<a href='delete' >Delete</a>"+"<br>");
		
		
	}
}
%>
<a href="logout">Logout</a>
</body>
</html>