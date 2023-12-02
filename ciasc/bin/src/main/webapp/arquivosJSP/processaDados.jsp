<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%@ page import="br.com.unisales.DAO.UsuarioRecepcionista" %>
<%@ page import="br.com.unisales.DAO.UsuarioRecepcionistaDAO" %>


<%


	
		Connection conn =null;
		PreparedStatement stmt = null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ciasc_01", "root", "97685712");
			
			UsuarioRecepcionista usuario = new UsuarioRecepcionista();
			 String nome = request.getParameter("nome");
				String email = request.getParameter("email");
				String senha = request.getParameter("senha");
				String confirmaSenha = request.getParameter("confirmaSenha");
				String RA = request.getParameter("RA");
				String Id = request.getParameter("Id");
				
				usuario.setNome(nome);
				usuario.setEmail(email);
				usuario.setSenha(confirmaSenha);
				usuario.setConfirmarSenha(confirmaSenha);
				usuario.setRA(RA);
			 String sql = "INSERT INTO Recepcionista(idRecepcionista,nome,RA,senha,email,confirmarSenha) VALUES (?, ?,?,?,?,?)";
			 
			 

		        stmt = conn.prepareStatement(sql);
		        stmt.setString(2, usuario.getNome());
		        stmt.setString(5, usuario.getEmail());
		        stmt.setString(3, usuario.getRA());
		        stmt.setString(4, usuario.getSenha());
		        stmt.setString(6, usuario.getConfirmarSenha());
		        stmt.setInt(1, usuario.getId());
	       
	        if((usuario.getSenha().equals(usuario.getConfirmarSenha()) && (usuario.getSenha().length() >= 8  && usuario.getSenha().length() <=20)
	        		&& usuario.getConfirmarSenha().length() >= 8  && usuario.getConfirmarSenha().length() <=20 )){
	        	 stmt.executeUpdate();
	        	 
	        	 String novaURL = "/login";
	        	 response.sendRedirect(request.getContextPath() + novaURL);
	        }else if(!usuario.getSenha().equals(usuario.getConfirmarSenha())){
	        	out.println("As senhas diferem");

	        }else if((usuario.getSenha().length() < 8 || usuario.getSenha().length() > 20) && (usuario.getConfirmarSenha().length() < 8 || 
	        		usuario.getConfirmarSenha().length() > 20)){
	        	out.println("A senha precisa estar entre 8 e 20 caracteres");
	        	
	        }
	        
		
    }catch (Exception e) {
        out.println("Erro ao salvar os dados: " + e.getMessage());
    }

%>