<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>Cadastro Paciente</title>
  <link rel="stylesheet" href="./padrao.css">
  <link rel="stylesheet" href="./Inicio.css">
</head>

<body>
  <header>
    <div id="ciasc"><strong> C . I . A . S . C</strong></div>
    <img src="./opcao.png" alt="op��es" class="imagem-opicao" onclick="Usuario()">
  </header><!--este botao tem que levar um pop up-->
  <aside>
      <button type="button" class="nova-consulta" onclick="location.href='nova-consulta'"><strong>Novo Agendamento</strong></button>
    <br>
    
      <button type="button" class="pesquisa-consulta"onclick="location.href='pesquisa-consulta'"><strong>Pesquisa Consulta</strong></button>
    <br>
      <button type="button" class="cadastro-paciente" onclick="location.href='cadastro-paciente'"><strong>Cadastro
          Paciente</strong></button>
    <br>
    <button type="button" class="fisioterapia" onclick="HorariosDisponiveis(1)"  onclick="location.href='fisioterapia'"><img src="./fisioterapia.png"
       alt="fisioterapia" class="emoji-fisioterapia"><strong> Fisioterapia</strong></button>
    <br>
   <button type="button" class="nutricao" onclick="HorariosDisponiveis(2)" onclick="location.href='nutricao'" ><img src="./nutri�ao.png"
      alt="nutricao" class="emoji-nutricao"><strong> Nutri��o</strong></button>
    <br>
    <button type="button" class="enfermagem" onclick="HorariosDisponiveis(3)" onclick="location.href='enfermagem'" ><img src="./enfermagem.png" 
      alt="enfermagem" class="emoji-enfermagem"><strong>Enfermagem</strong></button>
    <br>
  </aside>
  <!--AQUUI EST� A DIFEREN�A DO CADASTRO DE NOVA CONSULTA-->
  <div class="centralizar">
    <main>
        <div class="caixa-de-dentro">
          <form action="arquivosJSP/processaDadosPaciente.jsp" method="post"><!--AQUI � PARA COLOCAR O JAVA-->
          <div class="linha1">
            <!--aqui � para deixar o nome ao lado do email-->
            <div id="caixa-nome">
              <label class="nome" for="nome">Nome</label>
              <br>
              <input type="text" id="nome" name="nome" required>
            </div>
            <div id="caixa-nascimento">
              <label class="nascimento" for="nascimento">Data Nascimento</label>
              <br>
              <input type="date" id="nascimento" name="nascimento">
            </div>
          </div>
          <!--aqui termina a lina 1-->
          <div class="linha2">
            <!--aqui � para deixar o nome ao lado do email-->
            <div id="caixa-cpf">
              <label class="cpf" for="cpf">CPF</label>
              <br>
              <input type="text" id="cpf" name="cpf">
            </div>
            <div id="caixa-idade">
              <label class="idade" for="idade">Idade</label>
              <br>
              <input type="number" id="idade" name="idade" required>
            </div>

            <div id="caixa-endereco">
              <label class="telefone"for="endereco">Endere�o</label>
              <br>
              <input type="" id="endereco" name="endereco">
            </div>

          </div>
          <!--aqui termina a linha 2-->
          <div class="linha3">
            <!--aqui � para deixar o nome ao lado do email-->
            <div id="caixa-email">
              <label class="e-mail" for="email">E-mail</label>
              <br>
              <input type="email" id="email" name="email" >
            </div>

            <div id="caixa-telefone">
              <label class="telefone" id="tel1" for="telefone">Telefone 1</label>
              <br>
              <input type="tel" id="telefone" name="Telefone 1" required/>
            </div>
            <div id="caixa-telefone1">
              <label class="telefone" id="tel2" for="telefone_1">Telefone 2</label>
              <br>
              <input type="tel" id="telefone1" name="telefone2_">
            </div>

          </div>
          <!--aqui termina a linha 3-->
          <button type="submit" id="botao">Cadastrar</button>
          </form>
        </div>
    </main>
    <div id="deslogar">
      <!--aqui vai ficar o campo de deslogar-->
    </div>
    <!--AQUI EST� O STYLE QUE DEFINE A APARENCIA DO MODAL-->
    <style>
      main {
        height: 300px;
      }
  
      * {
        font-family: Arial, Helvetica, sans-serif;
        padding: 0;
        margin: 0;
        box-sizing: border-box;
      }
      #fade {
        position: fixed;/*ficara por cima de todos*/
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.6);
        z-index: 5;/*� para ficar a cima de todos os outros arquivos*/
      }
  
      #modal {
        position: fixed;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);/**mudar a margem do conteudo*/
        z-index: 10;
        color: black;
        max-width: 90%;
      }
  
      #modal.hide,
      #fade.hide {
        opacity: 0;/*paar sumir com o modale fade*/
        pointer-events: none;/*� para deixar sem eventos seestiver escooondido*/
      }
  
      #fade,
      #modal {
        transition: 0.5s;
        opacity: 1;
        pointer-events: all;
        /*quandoa a opacidade for = 1 pode ocorerr os evenetos*/
      }
    </style>

      <!--AQUI EST� O  QUE ESCURECE A TELA -->
      <div id="fade" class="hide"></div>
      <!--aqui � para a opacidade-->
      <div id="modal" class="hide">
        <table id="tabela">
          <thead>
            <th>Nome</th>
            <th>Especialidade</th>
            <th>Hora</th>
          </thead>
          <tbody id="corpo">
            <!--  AQUI FICA A TABELA QUE VAI PUXAR DOLOCALSTORAGE -->
          </tbody>
        </table>
      </div>

    </div>
  <script src="horarios.js"></script>
  <!--<script src="modal.js"></script>-->
  <script src="deslogar.js"></script>
</body>

</html>
