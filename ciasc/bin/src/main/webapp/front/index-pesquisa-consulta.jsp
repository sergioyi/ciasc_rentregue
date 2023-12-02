<%@ page import="java.util.*, br.com.unisales.DAO.Consulta" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pesquisa Consulta</title>
  <link rel="stylesheet" href="./padrao.css">
  <link rel="stylesheet" href="./Inicio.css">
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
  <script>
    function buscarDados() {
      var nome = $("#nome").val();
      var cpf = $("#cpf").val();

      $.ajax({
        type: "POST",
        url: "arquivosJSP/recebeDadosConsulta.jsp",
        data: { nome: nome, cpf: cpf },
        success: function (data) {
          $("#tabela").html(data);
        },
        error: function (error) {
          console.log("Erro na requisição AJAX: " + error);
        }
      });
    }
  </script>
</head>

<body>
  <style>
    .caixa-de-dentro {
      display: flex;
      flex-direction: row;
    }

    .linha1 {
      margin-bottom: 30px;
      margin-right: 20px;
    }
  </style>
  <header>
    <div id="ciasc"><strong> C . I . A . S . C</strong></div>
    <a href="index-informacao-usuario.html"><img src="./opcao.png" alt="opções" class="imagem-opicao"></a>
  </header>
  <aside>
    <a onclick="location.href='nova-consulta'">
      <button type="button" class="nova-consulta"><strong>Novo Agendamento</strong></button></a>
    <br>
    <a onclick="location.href='pesquisa-consulta'">
      <button type="button" class="pesquisa-consulta"><strong>Pesquisa Consulta</strong></button></a>
    <br>
    <a onclick="location.href='cadastro-paciente'"><button type="button" class="cadastro-paciente"><strong>Cadastro Paciente</strong></button></a>
    <br>
    <a onclick="location.href='fisioterapia'"><button type="button" class="fisioterapia"><img src="./fisioterapia.png" alt="fisioterapia" class="emoji-fisioterapia"><strong> Fisioterapia</strong></button></a>
    <br>
    <a onclick="location.href='nutricao'"><button class="nutricao"><img src="./nutriçao.png" alt="nutricao" class="emoji-nutricao"><strong> Nutrição</strong></button></a>
    <br>
    <a onclick="location.href='enfermagem'"><button class="enfermagem"><img src="./enfermagem.png" alt="enfermagem" class="emoji-enfermagem"><strong> Enfermagem</strong></button></a>
    <br>
  </aside>

  <div class="centralizar">
    <main>
      <div class="caixa-de-dentro">
        <div class="linha1">
          <div id="caixa-nome">
            <label class="nome" for="nome">Nome</label>
            <br>
            <input type="text" id="nome" name="nome">
          </div>
          <div id="caixa-cpf">
            <label class="cpf" for="cpf">CPF</label>
            <br>
            <input type="text" id="cpf" name="cpf" placeholder="123-456-789-10">
          </div>
        </div>
        <button type="button" id="botao" onclick="buscarDados()">Buscar</button>
      </div>
    </main>

    <div id="tabela"></div>

    <%@ include file="../arquivosJSP/recebeDadosConsulta.jsp" %>
  </div>
</body>

</html>
