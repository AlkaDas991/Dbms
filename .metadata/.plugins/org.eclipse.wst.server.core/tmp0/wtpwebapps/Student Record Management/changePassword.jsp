<%@page import ="Project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%
	String currPass = request.getParameter("currPass");
	String newPass = request.getParameter("newPass");
	try{
		Connection con = ConnectionProvider.getCon();
		String sql = "update student set pass=? where pass=?";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1,newPass);
		pst.setString(2,currPass);
		int i = pst.executeUpdate();     
		System.out.println(i);
		if(i>0){
			response.sendRedirect("success.html");
		}
		else{
			response.sendRedirect("failure.html");
		}
	}
	catch(Exception e){}
%>