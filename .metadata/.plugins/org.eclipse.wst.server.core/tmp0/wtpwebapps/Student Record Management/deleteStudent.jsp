<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String branch = request.getParameter("branch");
String rollNo = request.getParameter("rollNo");
try{
	Connection con = Project.ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("delete (select * from student inner join result on student.rollNo = result.rollNo where student.rollNo = '"+rollNo+"')");
	st.executeUpdate("delete from result where rollNo= '"+rollNo+"'");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e){
	out.println(e);
}
%>