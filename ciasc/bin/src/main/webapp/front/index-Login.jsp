<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="./Login.css">
</head>
<body>
    <main>
    <strong><span class="ciasc">C . I . A . S . C</span></strong>
      <form action="arquivosJSP/processaDadosLogin.jsp" method="POST"><!--COLOCAR O JAVA AQUI-->
      <div class="caixa-ra">
        <label for="RA" class="texto">RA</label>
        <br>
        <input type="number" id="RA" name="RA">
     </div>
      <div class="caixa-password">
      <p id="esqueceu">Esqueceu ?</p>
    <label for="Senha" class="texto">Senha</label><br>
    <input type="password" name="senha" id="password">
    <br>
    <input type="submit" class="botao-entrar" value="Entrar"/>
   </div>
  </form>
  
  </main>
    <script>
      //  1   -   isso � para receber o RA caso tenha esquecido a senha 
      var a = window.document.getElementById('esqueceu')
          a.addEventListener('click', function(){
      var userInput =prompt("Digite seu RA: ");
      });
      //    fim do   1  -
      //para enviar o RA caso esqueceu as senha
      
      //fim caso tenha esquecido a senha
    </script>
</body>
</html>