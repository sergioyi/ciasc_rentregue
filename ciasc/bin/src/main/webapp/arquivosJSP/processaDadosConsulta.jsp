<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<%@ page import = "java.util.*, br.com.unisales.DAO.Consulta" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%

String nome = request.getParameter("nome");
String email = request.getParameter("email");
String cpf = request.getParameter("cpf");
String nascimento = request.getParameter("nascimento");
String data = request.getParameter("data");
String hora = request.getParameter("hora");
String especialidade = request.getParameter("especialidade");
String telefone = request.getParameter("telefone");


PreparedStatement abc = null;
Connection conn = null;

try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ciasc_01", "root", "97685712");
	String sql = "INSERT INTO Consulta( nome, email, cpf, nascimento, data, hora, especialidade, telefone) VALUES(?,?,?,?,?,?,?,?)";
	Consulta consulta = new Consulta();
	abc = conn.prepareStatement(sql);
	consulta.setNome(nome);
	consulta.setEmail(email);
	consulta.setCpf(cpf);
	consulta.setNascimento(nascimento);
	consulta.setData(data);
	consulta.setHora(hora);
	consulta.setEspecialidade(especialidade);
	consulta.setTelefone(telefone);
	
	abc.setString(1, consulta.getNome());
	abc.setString(2, consulta.getEmail());
	abc.setString(3, consulta.getCpf());
	abc.setString(4, consulta.getNascimento());
	abc.setString(5, consulta.getData());
	abc.setString(6, consulta.getHora());
	abc.setString(7, consulta.getEspecialidade());
	abc.setString(8, consulta.getTelefone());
	
	abc.execute();
	String  url = "/nova-consulta";
	((HttpServletResponse) response).sendRedirect(request.getContextPath() + url);



}catch(Exception e){
	out.println("Erro ao salvar dados: "+  e.getMessage());
}
%>
