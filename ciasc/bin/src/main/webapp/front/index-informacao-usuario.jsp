<!DOCTYPE html>
<html lang="pt-br">
<!--TEM QUE VER COMO COLOCAR NOME EM CADA DATA PARA PODER DIFERENCIAR O NASCIMENTOM DE ADMIÇÃO-->
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>Informações de Usuário</title>
  <link rel="stylesheet" href="./Inicio.css">
  <link rel="stylesheet" href="./padrao.css">
</head>

<body> 
<style>
   main{
   width: auto;/*largura da caixa azul*/
   height: auto;/*tamanho da caixa azul*/
   border-radius: 15px;/*arestas aredontadas*/
   margin-top: 28px;/*ver com o samuel se essa altura está boa, pq não vai dar para seguir a ideia do luciano de 8px*/
   background-color: #151C48;
   display: flex;
   flex-direction: column;
   justify-content: center;
   padding: 20px;
   
 }
</style>
<header>
  <div id="ciasc"><strong> C . I . A . S . C</strong></div>
  <a href="index-informacao-usuario.html"><img src="./opcao.png" alt="opções" class="imagem-opicao"></a> 
</header><!--este botao tem que levar um pop up-->
<aside>
  
    <button type="button" class="nova-consulta" onclick="location.href='nova-consulta'"><strong>Novo Agendamento</strong></button>
  <br>

    <button type="button" class="pesquisa-consulta" onclick="location.href='pesquisa-consulta'"><strong>Pesquisa Consulta</strong></button>
  <br>
    <button type="button" class="cadastro-paciente" onclick="location.href='cadastro-consulta'"><strong>Cadastro
        Paciente</strong></button>
  <br>
    <button type="button" class="fisioterapia"><img
        src="./fisioterapia.png" alt="fisioterapia" class="
        emoji-fisioterapia" onclick="location.href='fisioterapia'"><strong> Fisioterapia</strong>
    </button>
  <br>
    <button class="nutricao"><img src="./nutriçao.png"
        alt="nutricao" class="emoji-nutricao" onclick="location.href='nutricao'"><strong> Nutrição</strong></button></a>
  <br>
    <button class="enfermagem"><img
        src="./enfermagem.png" alt="enfermagem" class="emoji-enfermagem" onclick="location.href='enfermagem'"><strong>
        Enfermagem</strong></button>
  <br>
</aside>
  <div class="centralizar">
  <main>
    <div id="cor-de-fundo-foto">
    <img src="./Foto.jpg" alt="foto" id="foto">
  </div>
  <strong><samp id="nome-usuario">Michelle</samp></strong>
  <div>
    <form action="" method="post">
  <label for="mudar-senha" id="label-m-senha">Mudar de Senha</label><br>
  <input type="text" id="mudar-senha">
</div>
    <a href="index-inicio.html">
  <button type="button" class="outrosbotoes">Mudar</button></a>
</form>
</main>
</div>
</body>
</html>