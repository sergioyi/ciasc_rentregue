<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
    <link rel="stylesheet" href="./style-cadastro-recepcionista.css">
</head>
<body>
    <main>
      
    <strong><span class="ciasc">C . I . A . S . C</span></strong>
      <form action = "../arquivosJSP/processaDados.jsp"  method="post">
      <div id="seprar-inputs"><!--corpo que sepra no space-beetwenn dos botões--->
      <div>
      <div class="caixa-nome">
    <input type="hidden" name="id" class="input">
    <label for="Nome-completo" class="texto">Nome Completo : <label><br>
    <input type="text" name="nome" class="input">
    </div>
      <div class="caixa-ra">
    <label for="RA" class="texto">RA : <label><br>
    <input type="text" name="RA" class="input">
    </div>
      <div class="caixa-email">
    <label for="Email" class="texto">Email :<label><br>
    <input type="email" name="email" class="input">
    </div>
    </div><!--fim do 1º corpo-->
    <div>
      <div class="caixa-password">
    <label for="Senha" class="texto">Senha :<label><br>
    <input type="password" name="senha" class="input">
    </div>
      <div class="caixa-cofirm-password">
    <label for="Confirmar-Senha" class="texto">Confirmar Senha :<label><br>
    <input type="password" name="confirmaSenha" class="input">
    </div>
    </div><!--fim do 2º corpo-->
    </div><!--corpo que separa no space-beetwenn-->
    <br>
    <input type="submit" class="botao-entrar" name="acao" value="Cadastro Recepcionista"/>
    </form>
  </div>
  </main>
</body>
</html>
   
