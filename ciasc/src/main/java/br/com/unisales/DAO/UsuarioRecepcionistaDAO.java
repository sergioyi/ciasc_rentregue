package br.com.unisales.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.unisales.DAO.UsuarioRecepcionista;

import javax.servlet.http.HttpServlet;
import java.util.*;
import java.io.*;


public class UsuarioRecepcionistaDAO {
		HttpSession session;
		
		 public void salvar(UsuarioRecepcionista usuario) throws ClassNotFoundException, SQLException{
				
					Connection conn =null;
					PreparedStatement stmt = null;
					try {
						
						Class.forName("com.mysql.jdbc.Driver");
						conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ciasc_01", "root", "97685712");
						
				       	
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
				        	System.out.println("Os dados foram salvos Com sucesso");
				        }else if(!usuario.getSenha().equals(usuario.getConfirmarSenha())){
				        	System.out.println("As senhas diferem");

				        }else if((usuario.getSenha().length() < 8 || usuario.getSenha().length() > 20) && (usuario.getConfirmarSenha().length() < 8 || 
				        		usuario.getConfirmarSenha().length() > 20)){
			         	System.out.println("A senha precisa estar entre 8 e 20 caracteres");
				        	
				        }
				        
					
			    }catch (Exception e) {
			        System.out.println("Erro ao salvar os dados: " + e.getMessage());
  
			    }
		 }
		 
		 public void pegaLogin(UsuarioRecepcionista user) {
			 	HttpServlet response;
			 	
				UsuarioRecepcionista usuario = new UsuarioRecepcionista();
				Connection conn = null;
				PreparedStatement stmt = null;
				ResultSet result = null;		
				
				try{
					
					Class.forName("com.mysql.jdbc.Driver");
					conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ciasc_01", "root", "97685712");
					
					String sql = "SELECT * FROM Recepcionista WHERE RA = ? AND senha = ?";
			        stmt = conn.prepareStatement(sql);
			        stmt.setString(1, user.getRA());
			        stmt.setString(2, user.getSenha());
					result = stmt.executeQuery();	
					
					if (result.next()) {
						
					
			        } else {
			            System.out.println("Falha no login. Verifique seu e-mail e senha.");
			        }
					
				}catch(Exception e){
					System.out.println(e);
				}
		 }
}		 