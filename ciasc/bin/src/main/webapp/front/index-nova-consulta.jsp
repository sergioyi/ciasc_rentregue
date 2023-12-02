<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Novo Agendamento</title>
    <link rel="stylesheet" href="./padrao.css">
    <link rel="stylesheet" href="./Inicio.css">
</head>
<body>
  <header>
    <div id="ciasc"><strong> C . I . A . S . C</strong></div>
    <a href="index-informacao-usuario.html"><img src="./opcao.png" alt="opções" class="imagem-opicao"></a> 
  </header><!--este botao tem que levar um pop up-->
  <aside>
      <button type="button" class="nova-consulta" onclick="location.href='nova-consulta'"><strong>Novo Agendamento</strong></button>
    <br>
      <button type="button" class="pesquisa-consulta" onclick="location.href='pesquisa-consulta'"><strong>Pesquisa Consulta</strong></button>
    <br>
      <button type="button" class="cadastro-paciente" onclick="location.href='pesquisa-paciente'"><strong>Cadastro
          Paciente</strong></button>
    <br>
      <button type="button" class="fisioterapia"><img
          src="./fisioterapia.png" alt="fisioterapia" class="
          emoji-fisioterapia" onclick="location.href='fisioterapia'"><strong> Fisioterapia</strong>
      </button>
    <br>
      <button class="nutricao"><img src="./nutriçao.png"
          alt="nutricao" class="emoji-nutricao" onclick="location.href='nutricao'"><strong> Nutrição</strong></button>
    <br>
      <button class="enfermagem"><img
          src="./enfermagem.png" alt="enfermagem" class="emoji-enfermagem" onclick="location.href='enfermagem'"><strong>
          Enfermagem</strong></button>
    <br>
  </aside>
    <div class="centralizar">
    <main>
      
     <form action="arquivosJSP/processaDadosConsulta.jsp" method="post">
        
    <div class="linha1"><!--aqui é para deixar o "nome" ao lado do "email" -->
  
    <div id="caixa-nome">    
      <label for="nome" class="nome">Nome</label><br>
      <input type="text" id="nome" name="nome" />
    </div>
        
    <div id="caixa-email">   
      <label for="email" class="e-mail">E-mail</label><br>
      <input type="email" id="email" name="email"/>
    </div>
        
    </div> <!--fim da linha 1-->   
    <div class="linha2"><!--aqui é para deixar os 3 inputs juntos-->
      
      <!--<div id="caixa-nascimento">
        <label for="nascimento" class="nascimento">Data Nascimento</label><br>
        <input type="date" id="nascimento" name="data de nascimento"/>
      </div>-->
      
      <div id="caixa-cpf">
        <label for="cpf" class="cpf">CPF</label><br>
        <input type="text" id="cpf" name="cpf" placeholder="123-456-789-10"/>
      </div>
      
      <div id="caixa-telefone">
        <label for="telefone" class="telefone">Telefone</label><br>
        <input type="tel" id="telefone" name="telefone"/>
      </div>
      
    </div> <!--fim da linha 2-->
    <div class="linha3"><!--aqui é pra colocar os 3 inputs juntos-->
      
      <div id="caixa-especialidade">
        <label for="especialidade" class="especialidade">Especialidade</label><br>
        <input type="text" id="especialidade" name="especialidade" list="opcoes" required />
        <datalist id="opcoes">
          <option value="Fisioterapia">Fisioterapia</option>
          <option value="Nutrição">Nutrição</option>
          <option value="Enfermagem">Enfermagem</option>
        </datalist>
      </div>
      
      <div id="caixa-data">
        <label for="data" class="data">Data</label><br>
        <input type="date" id="data" name="data" required/>
      </div>
      
      <div id="caixa-hora">
        <label for="hora" class="hora">Hora</label><br>
        <input type="text" id="hora" name="hora" list="op" required/>
        <datalist id="op">
          <!--aqui fica asopçoes de hora-->
        </datalist>
      </div>
      
    </div> <!--fim da linha 3-->
        <br>
    <button class="botao" type="submit" id="botao"><strong>Agendar</strong></button>
</form>
    </main>
  </div> <!--fim do centralizar-->
  <script src="Agendamento.js"></script> 
</body>
</html>