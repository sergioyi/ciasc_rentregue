<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/svg+xml" href="./iconedociasc.svg" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<style>
* { /*aqui � para remover a margem minima do corpo total */
	font-family: 'Tanseek �rabe Moderno M�dio', 'Arial Narrow', Arial,
		sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body { /*corpo ocupa 100%  de tela, e fica no centro*/
	height: 100vh;
	display: grid;
	justify-items: center;
	align-items: center;
}

main {
	color: #ffffff;
	background-color: #151C48;
	height: 500px; /*tamanho da caixa/main*/
	width: 500px; /*largura da ciaxa*/
	padding-top: 70px; /*dist�ncia das do titulo do topo da caixa*/
	border-radius: 5px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	/*sombra de baixo do main*/
}

.ciasc {
	/*font-size: 5vh;*/
	font-size: 40px;
	display: flex;
	justify-content: center;
}

form {
	padding-top: 32px;
	padding-left: 60px;
}

.caixa-ra, .caixa-password { /*os itens da caixa */
	margin-top: 10px; /*distanciamneto de cima*/
	padding-top: 11px; /*altura do texto com o teto*/
}

.texto {
	font-size: 2.3vh;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

#esqueceu {
	cursor: pointer;
	margin-left: 280px;
	margin-bottom: -15px; /*para ficar um poco mais proximo do input*/
}

.botao_entrar {
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.40);
	background-color: #5563C1; /*cor do bot�o*/
	color: white; /*cor da letra do bot�o*/
	margin-top: 4rem; /*dist�nci do bot�o do input de senha*/
	margin-left: 2rem;
	width: 170px;
	height: 3rem;
	cursor: pointer; /*mudar a seta quando passar por cima*/
	border-radius: 7px; /*arestas redondas*/
	border: none /*n�o ter cor de borada*/
}

.botao-entrar:hover {
	transform: scale(1.5px);
	/*muadar o tamanho quando passar por cima o mouse*/
}

input { /*o campo de preencimento do RA e senha */
	width: 370px; /*largura dos input's*/
	height: 32px;
	border-radius: 5px; /*a borda aredondada*/
	border: none; /*cor da bora do campo do RA e senha*/
	padding-top: 11px; /*altura do texto com o teto*/
	padding-bottom: 11px; /*altura do texto com o "ch�o"*/
}

@media ( max-width : 720px) {
	main {
		height: 80vh; /*tamanho da caixa/main*/
		width: 90vw; /*largura da ciaxa*/
	}
	.ciasc {
		font-size: 5vh;
	}
	form {
		padding-left: 14px;
	}
	#esqueceu {
		margin-left: 250px;
		margin-bottom: -15px; /*para ficar um poco mais proximo do input*/
	}
	.RA, .password { /*o campo de preencimento do RA e senha */
		width: 80vw; /*largura dos input's*/
		padding-top: 1vh; /*altura do texto com o teto*/
		padding-bottom: 1vh; /*altura do texto com o "ch�o"*/
	}
	.texto {
		font-size: 2vh;
	}
	.botao-entrar {
		margin-top: 9vh; /*dist�nci do bot�o do input de senha*/
		padding-left: 5vw; /*espa�amento do texto para esquerda*/
		padding-right: 5vw; /*espa�amento do texto para direita*/
		padding-top: 2.5vh; /*espa�amento do texto para cima*/
		padding-bottom: 2.5vh; /*espa�amento do texto para baixo*/
	}
}
</style>
<body>
	<main>
		<strong><span class="ciasc">C . I . A . S . C</span></strong>
		<form action="arquivosJSP/processaDadosLogin.jsp" method="POST">
			<div class="caixa-ra">
				<label for="RA" class="texto">RA</label> <br> <input
					type="number" id="RA" name="RA">
			</div>
			<div class="caixa-password">
				<p id="esqueceu">Esqueceu ?</p>
				<label for="Senha" class="texto">Senha</label><br> <input
					type="password" name="senha" id="password"> <br> <input
					type="submit" class="botao_entrar" value="Entrar" />
			</div>
		</form>
	</main>
	<script>
		//  1   -   isso � para receber o RA caso tenha esquecido a senha 
		var a = window.document.getElementById('esqueceu')
		a.addEventListener('click', function() {
			var userInput = prompt("Digite seu RA: ");
		});
	</script>
</body>
</html>