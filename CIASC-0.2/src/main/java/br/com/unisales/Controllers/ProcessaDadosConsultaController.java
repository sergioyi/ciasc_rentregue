package br.com.unisales.Controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;

import java.sql.*;
import br.com.unisales.DAO.*;

@WebServlet("/processa-consulta")
public class ProcessaDadosConsultaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProcessaDadosConsultaController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String nome = request.getParameter("nome");
	        String cpf = request.getParameter("cpf");

	        Connection conn = null;
	        PreparedStatement abc = null;
	        ResultSet result = null;
	        ArrayList<Consulta> consultas = new ArrayList<>();

	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ciasc_01", "root", "97685712");
	            String sql = "SELECT * FROM Consulta WHERE nome = ? AND cpf = ?";

	            abc = conn.prepareStatement(sql);
	            abc.setString(1, nome);
	            abc.setString(2, cpf);
	            result = abc.executeQuery();

	            while (result.next()) {
	                Consulta consulta = new Consulta();
	                consulta.setNome(result.getString("nome"));
	                consulta.setCpf(result.getString("cpf"));
	                consulta.setEspecialidade(result.getString("especialidade"));
	             
	                consultas.add(consulta);
	            }
	        } catch (Exception e) {
	            e.printStackTrace(); 
	        } finally {

	            if (result != null) {
	                try {
	                    result.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	            }
	            if (abc != null) {
	                try {
	                    abc.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	            }
	            if (conn != null) {
	                try {
	                    conn.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	            }
	        }

	        request.setAttribute("consultas", consultas);

	      request.getRequestDispatcher("/front/index-pesquisa.consulta").forward(request, response);
	    
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
