<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, br.com.unisales.DAO.Consulta" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
/*
String nomeConsultaDetalhes = request.getParameter("nomeConsultaDetalhes");
String cpfConsultaDetalhes = request.getParameter("cpfConsultaDetalhes");

Connection conn = null;
ResultSet rs = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ciasc_01", "root", "97685712");
    
    // Ajuste a consulta SQL conforme necessário
    String sql = "SELECT nome, especialidade, hora FROM Consulta WHERE nome = ? AND cpf = ?";
    
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, nomeConsultaDetalhes);
    pstmt.setString(2, cpfConsultaDetalhes);

    rs = pstmt.executeQuery();

    JSONObject consultaDetalhes = new JSONObject();

    if (rs.next()) {
        consultaDetalhes.put("nome", rs.getString("nome"));
        consultaDetalhes.put("especialidade", rs.getString("especialidade"));
        consultaDetalhes.put("hora", rs.getString("hora"));
    }

    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    response.getWriter().write(consultaDetalhes.toString());

} catch (Exception e) {
    e.printStackTrace();
} finally {
    try {
        if (rs != null) rs.close();
        if (conn != null) conn.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}*/
%>