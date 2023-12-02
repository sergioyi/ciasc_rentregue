<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import=" java.util.*,java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet, java.util.ArrayList,java.util.List" %>
<%@ page import ="java.sql.*" %>
 <%@page import ="br.com.unisales.DAO.UsuarioAdmin" %>
   
 <% 

 String RA = request.getParameter("RA");
	String senha = request.getParameter("senha");
	UsuarioAdmin usuario = new UsuarioAdmin();
	Connection conn = null;
	PreparedStatement abc = null;
	ResultSet result = null;
	
	
	try{
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ciasc_1", "root", "admin");
		
		String sql = "SELECT * FROM Administrador WHERE RA = ? AND senha = ?";
     abc = conn.prepareStatement(sql);
     abc.setString(1, RA);
     abc.setString(2, senha);
		result = abc.executeQuery();	
		
		if (result.next()) {
			session.setAttribute("admin", usuario);
			String url = "/inicio";
			((HttpServletResponse) response).sendRedirect(request.getContextPath() + url);
     } else {
         out.println("Falha no login. Verifique seu e-mail e senha.");
     }
		
	}catch(Exception e){
		out.println(e);
	}
%>
 
