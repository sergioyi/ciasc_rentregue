<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Horário de Nutrição</title>
    <link rel="stylesheet" href="./padrao.css">
    <link rel="stylesheet" href="./Inicio.css">
</head>

<body>
  <style>
    main{
      height: 300px;
    }
  </style>
  <header>
    <div id="ciasc"><strong> C . I . A . S . C</strong></div>
    <a onclick="location.href='informacoes-usuario'"><img src="./opcao.png" alt="opções" class="imagem-opicao"></a> 
  </header><!--este botao tem que levar um pop up-->
  <aside>
      <button type="button" class="nova-consulta" onclick="location.href='nova-consulta'"><strong>Novo Agendamento</strong></button>
    <br>
      <button type="button" class="pesquisa-consulta" onclick="location.href='pesquisa-consulta'"><strong>Pesquisa Consulta</strong></button>
    <br>
    <button type="button" class="cadastro-paciente" onclick="location.href='cadastro-paciente'"><strong>Cadastro
          Paciente</strong></button>
    <br>
    <button type="button" class="fisioterapia" onclick="location.href='fisioterapia'"><img
          src="./fisioterapia.png" alt="fisioterapia" class="
          emoji-fisioterapia"><strong> Fisioterapia</strong>
      </button>
    <br>
    <button class="nutricao" onclick="location.href='nutricao'"><img src="./nutriçao.png"
          alt="nutricao" class="emoji-nutricao"><strong> Nutrição</strong></button>
    <br>
   <button class="enfermagem" onclick="location.href='enfermagem'"><img
          src="./enfermagem.png" alt="enfermagem" class="emoji-enfermagem"><strong>
          Enfermagem</strong></button>
    <br>
  </aside>
  <h2>Nutrição</h2>
  <div class="centralizar">


<main id="main-nutricao">
  <div class="caixa-azul">
        <div class="coluna"><!--pega de 4 em 4 para fazer um colona-->
          <form action="" method="post"></form>
          <button type="button" class="botao1" id="ho1"><div class="hora">13:30<br><div class="arrTicket"><div id="ticket1">30</div>/30</div></div></button>
          <button type="button" class="botao1" id="ho2"><div class="hora">14:00<br><div class="arrTicket"><div id="ticket2">30</div>/30</div></div></button>
          <button type="button" class="botao1" id="ho3"><div class="hora">15:00<br><div class="arrTicket"><div id="ticket3">30</div>/30</div></div></button> 
          <button type="button" class="botao1" id="ho4"><div class="hora">16:00<br><div class="arrTicket"><div id="ticket4">30</div>/30</div></div></button>
          <button type="button" class="botao1" id="ho5"><div class="hora">16:30<br><div class="arrTicket"><div id="ticket5">30</div>/30</div></div></button>
      <br>
      <input type="date" name="date1" id="botao-data">
    </form>
</main>
</div>
<script src="js/reddd.js"></script>
</body>
</html>