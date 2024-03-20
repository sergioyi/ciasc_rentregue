package br.com.unisales.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.http.HttpSession;

public class PacienteDAO {
	HttpSession session;
	
	 public void salvar(Paciente usuario) throws ClassNotFoundException, SQLException{
			
				Connection conn =null;
				PreparedStatement stmt = null;
				try {
					
					Class.forName("com.mysql.jdbc.Driver");
					conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ciasc_01", "root", "97685712");
					
			       	
			        String sql = "INSERT INTO Paciente(nome,idade,email,telefone,dataNascimento,telefone_2) VALUES (?, ?,?,?,?,?)";

			        stmt = conn.prepareStatement(sql);
			        stmt.setString(1, usuario.getNome());
			        stmt.setString(2, usuario.getIdade());
			        stmt.setString(3, usuario.getEmail());
			        stmt.setString(4, usuario.getTelefone());
			        stmt.setString(5, usuario.getDataNascimento());
			        stmt.setString(6, usuario.getTelefone_2());
			       
			       stmt.executeUpdate();
			        
				
		    }catch (Exception e) {
		        System.out.println("Erro ao salvar os dados: " + e.getMessage());

		    }
	 }
}
