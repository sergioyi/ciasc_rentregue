package br.com.unisales.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import br.com.unisales.DAO.UsuarioRecepcionista;

import jakarta.servlet.http.HttpServlet;
import java.util.*;
import java.io.*;

public class ConsultaDAO {
	
			 public void salvar(Consulta consulta) throws ClassNotFoundException, SQLException{
					
						Connection conn =null;
						PreparedStatement stmt = null;
						try {
							
							Class.forName("com.mysql.jdbc.Driver");
							conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ciasc_01", "root", "97685712");
							
					       	
					        String sql = "INSERT INTO Consulta(nome,email,email,cpf,nascimento, dataH, hora, especialidade, telefone) VALUES (?,?,?,?,?,?,?,?,?)";

					        stmt = conn.prepareStatement(sql);
					        stmt.setString(1, consulta.getNome());
					        stmt.setString(2, consulta.getEmail());
					        stmt.setString(3, consulta.getCpf());
					        stmt.setString(4, consulta.getNascimento());
					        stmt.setString(5, consulta.getData());
					        stmt.setString(7, consulta.getHora());
					        stmt.setString(8, consulta.getEspecialidade());
					        stmt.setString(9, consulta.getTelefone());
					        
					        
					       
					       stmt.executeUpdate();
						
				    }catch (Exception e) {
				        System.out.println("Erro ao salvar os dados: " + e.getMessage());
	  
				    }
			 }
			 
	}

