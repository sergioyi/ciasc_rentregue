<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%@ page import="br.com.unisales.DAO.Paciente" %>

<%


String nome = request.getParameter("nome"); 
String idade= request.getParameter("idade");
String email = request.getParameter("email");
String cpf = request.getParameter("cpf");
String telefone = request.getParameter("telefone");
String DataNascimento = request.getParameter("nascimento");

Connection conn = null;
PreparedStatement abc = null;

try {
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ciasc_1", "root", "admin");
	Paciente paciente = new Paciente();
	
	 String sql = "INSERT INTO Paciente(nome,idade,cpf,telefone,email,dataNascimento) VALUES (?,?,?,?,?,?)";
     abc = conn.prepareStatement(sql);
    
	paciente.setNome(nome);
	paciente.setIdade(idade);
	paciente.setCpf(cpf);
	paciente.setTelefone(telefone);
	paciente.setEmail(email);
	paciente.setDataNascimento(DataNascimento);
	
    abc.setString(1, paciente.getNome());
    abc.setString(2, paciente.getIdade());
    abc.setString(3, paciente.getCpf());
    abc.setString(4, paciente.getTelefone());
    abc.setString(5, paciente.getEmail());
    abc.setString(6, paciente.getDataNascimento());
    
    abc.execute();
    response.sendRedirect("index-cadastro-paciente.html");
	
	
}catch(Exception e){
	out.println("Erro ao salvar os dados: " + e.getMessage());
}


%>