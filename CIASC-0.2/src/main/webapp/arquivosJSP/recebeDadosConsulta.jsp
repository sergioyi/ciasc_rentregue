<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, br.com.unisales.DAO.Consulta" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String nome = request.getParameter("nome");
    String cpf = request.getParameter("cpf");

    List<Consulta> consultas = new ArrayList<>();
    Connection conn = null;
    PreparedStatement abc = null;
    ResultSet result = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ciasc_1?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "admin");

        String sql = "SELECT * FROM Consulta WHERE nome = ? OR cpf = ?";

        abc = conn.prepareStatement(sql);
        abc.setString(1, nome);
        abc.setString(2, cpf);
        result = abc.executeQuery();

        while (result.next()) {
            Consulta consulta = new Consulta();

            consulta.setNome(result.getString("nome"));
            consulta.setCpf(result.getString("cpf"));
            consulta.setEspecialidade(result.getString("especialidade"));
            consulta.setHora(result.getString("hora"));
            consulta.setData(result.getString("data"));

            consultas.add(consulta);
        }

    } catch (Exception e) {
        out.println("Erro ao buscar os dados: " + e.getMessage());
    } finally {
        try {
            if (result != null) result.close();
            if (abc != null) abc.close();
            if (conn != null) conn.close();
        } catch (SQLException ex) {
            out.println("Erro ao fechar conexões: " + ex.getMessage());
        }
    }

    StringBuilder htmlResultado = new StringBuilder();

    if (!consultas.isEmpty()) {
        htmlResultado.append("<table>");
        htmlResultado.append("<thead>");
        htmlResultado.append("<tr>");
        htmlResultado.append("<th>Nome</th>");
        htmlResultado.append("<th>RG</th>");
        htmlResultado.append("<th>Especialidade</th>");
        htmlResultado.append("<th>Data</th>");
        htmlResultado.append("<th>Hora</th>");
        htmlResultado.append("</tr>");
        htmlResultado.append("</thead>");
        htmlResultado.append("<tbody>");

        for (Consulta consulta : consultas) {
            htmlResultado.append("<tr>");
            htmlResultado.append("<td>").append(consulta.getNome()).append("</td>");
            htmlResultado.append("<td>").append(consulta.getCpf()).append("</td>");
            htmlResultado.append("<td>").append(consulta.getEspecialidade()).append("</td>");
            htmlResultado.append("<td>").append(consulta.getData()).append("</td>");
            htmlResultado.append("<td>").append(consulta.getHora()).append("</td>");
            htmlResultado.append("</tr>");
        }

        htmlResultado.append("</tbody>");
        htmlResultado.append("</table>");
    } else {
    }

    out.println(htmlResultado.toString());
%>
