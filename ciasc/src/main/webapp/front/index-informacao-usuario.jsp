<!DOCTYPE html>
<html lang="pt-br">
<!--TEM QUE VER COMO COLOCAR NOME EM CADA DATA PARA PODER DIFERENCIAR O NASCIMENTOM DE ADMI��O-->
<head>
<meta charset="utf-8">
<link rel="icon" type="image/svg+xml" href="./iconedociasc.svg" />
<meta name="viewport" content="width=device-width">
<title>Informa��es de Usu�rio</title>
<link rel="stylesheet" href="./Inicio.css">
<link rel="stylesheet" href="./padrao.css">
</head>

<body>
<style>
.centralizar {
	/*ele centraliza o main*/
	display: flex;
	justify-content: center;
}

main {
	width: 900px;
	/*ARRUMADO*/
	height: auto;
	/*arrumar aqui para quando houver altera��o da div com os negocios a main acompanhar em rela��o a altura*/
	border-radius: 5px;
	margin-top: 32px;
	padding-left: 60px;
	/*isso � a dist�ncia dos objetos da berada esquerda da div, s� para n�o ficar muito pr�ximo*/
	background-color: #151C48;
	color: white;
}

.linha1 {
	display: flex;
	/*aqui � para os inputs ficarem um do lado do oputro na linha*/
	gap: 20px;
	width: 600px;
}

.linha2 {
	display: flex;
	/*aqui � para os inputs ficarem um do lado do oputro na linha*/
	gap: 20px;
}

.linha3 {
	display: flex;
	/*aqui � para os inputs ficarem um do lado do oputro na linha*/
	gap: 20px;
}

.caixa-de-dentro {
	/*aqui � para vc colocar os itens da caixa em ordem separada do bot�o*/
	display: flex;
	/*aqui � para colocar as pequenas caixas de itens um do lado do outro*/
	flex-direction: column;
}

input {
	border: none;
	height: 32px;
	/*isso aqui varea para cada tamanho de laragura que foi de defindo*/
	border-radius: 7px;
	padding-left: 10px;
}

#nome {
	width: 400px;
}

#email {
	width: 350px;
}

#nascimento {
	width: 150px;
}

#cpf {
	width: 200px;
}

#telefone {
	width: 200px;
}

#especialidade {
	width: 400px;
}

#data {
	width: 130px;
}

#hora {
	width: 130px;
}

/*esse � da tela de cadastro de paciente*/
#idade {
	width: 100px;
}

.botao {
	/*o id � para o bot�o de pesquisa*/
	margin-top: 20px;
	margin-bottom: 20px;
	background-color: #6176C1;
	color: #ffffff;
}

#botao {
	margin-top: 20px;
	background-color: #6176C1;
	color: #ffffff;
	height: 45px;
	width: 150px;
	border: none;
	margin-left: 20px;
	margin-bottom: 10px;
	border-radius: 5px;
	font-size: 15px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

.botao-data:hover, #botao:hover, .botao1 {
	cursor: pointer;
	transform: scale(1.05);
}

/*aqui � para os de segunda linha dar uma margin top*/
#caixa-cpf, #caixa-telefone, #caixa-telefone1, #caixa-especialidade,
	#caixa-data, #caixa-hora, #caixa-nascimento, #caixa-idade, #caixa-nome,
	#caixa-email, #caixa-endereco {
	/*aqui � para dist�nciar essa caixa das de cima*/
	margin-top: 25px;
}

/*aqui fica a tabel de pesquisa**/
table {
	background-color: #151C48;
	color: white;
	padding-left: 30px;
	padding-right: 30px;
	padding-top: 10px;
	padding-bottom: 10px;
	height: auto;
	border-radius: 5px;
	width: 800px;
}

td {
	color: black;
	background-color: white;
	border-radius: 3px;
	padding-left: 15px;
	margin-right: 15px;
}

/*aqui fica o botao de data*/
/*BOT�ES DA DATA*/

/*aqui est� aparte dos tickets que ser�o reduzidos*/
.arrTicket {
	display: flex;
	justify-content: end;
	align-items: end;
}

#botao-data, .botao1 {
	background-color: #6176C1;
	color: #ffffff;
	margin-top: 40px;
	margin-left: 40px;
	margin-bottom: -15px;
	/*dist�ncia do bot�o de baixo*/
	height: 55px;
	width: 190px;
	border: none;
	border-radius: 5px;
	font-size: 15px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

#botao-data {
	background-color: #314fbb;
	color: #ffffff;
}

.hora {
	padding-top: 12px;
	/*dist�nciar a hora do topo*/
	width: 190px;
	/*mesma que o bot�o*/
	height: 40px
		/*menos que o tamanho do bot�o para que haja espa�o para os ticket*/
}

/*titulo de cada uma das especialidades*/
h2 {
	display: flex;
	justify-content: center;
	margin-top: 10px;
}

/*  AQUI EST� A TELA DE USUARIO*/
#foto {
	/*DESCOBRIR COMO DEIXAR A FOTO REDODA NA CAIXINHA */
	height: 80px;
	width: 80px;
	border-radius: 100px;
}

#cor-de-fundo-foto {
	/*posi��o da foto no main*/
	margin-bottom: 15px;
	margin-left: auto;
	margin-right: auto;
	height: 100px;
	/*tamanho da moldura*/
	width: 100px;
	/*largura da moldura da caira*/
	border-radius: 12px;
	/*arestas da moldura*/
	background-color: #fcfcfc;
	display: flex;
	justify-content: space-around;
	/*foto ficar no centro eixo x*/
	align-items: center;
	/*foto ficar no centro eixo y*/
}

.botao-usuario {
	margin: 5px;
	gap: 400px;
	height: 35px;
	width: 110px;
	background-color: #5563C1;
	color: white;
	border: none;
	border-radius: 5px;
}

#nome-usuario {
	margin-left: 55px;
}

/*AQUI ESTA A PARTE DO VERS�O MOBILE*/
@media ( max-width : 720px) {
	main {
		width: 90vw;
		height: auto;
		/*5, 15, 3, 72*/
		border-radius: 10px;
		margin-top: 3vh;
		margin-bottom: 3vh;
		/*float: right;*/
		display: flex;
		justify-items: left;
		padding-left: 20px;
	}
	#main-fisioterapia {
		height: 450px;
	}
	#main-nutricao {
		height: 520px;
	}
	.botao {
		margin-left: 0px;
		margin-top: 20px;
		width: 90px;
	}
	.linha1, .linha2, .linha3 {
		display: block;
		/*aqui � para os inputs ficarem um do lado do oputro na linha*/
	}
	#nome {
		width: 80vw;
	}
	#email {
		width: 80vw;
	}
	#nascimento {
		width: 80vw;
	}
	#cpf {
		width: 80vw;
	}
	#telefone {
		width: 80vw;
	}
	#telefone1 {
		width: 80vw;
	}
	#especialidade {
		width: 80vw;
	}
	#data {
		width: 80vw;
	}
	#hora {
		width: 80vw;
	}

	/*esse � da tela de cadastro de paciente*/
	#idade {
		width: 80vw;
	}
	#endereco {
		width: 80vw;
	}
}
</style>
<style>
* {
	font-family: 'Tanseek �rabe Moderno M�dio', 'Arial Narrow', Arial,
		sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background-color: #F5F5F5; /*colocar a cor cinza no resto do corpo*/
}

aside {
	background-color: #ffffff;
	height: 95vh; /*calcullo de cabe�alho com o corpo*/
	width: 18vw;
	float: left;
}

#ciasc {
	margin-top: 5px;
	margin-left: 25px;
}

header {
	color: #ffffff;
	font-size: 20px;
	background-color: #151C48;
	height: 5vh; /*calcullo de cabe�alho com o corpo*/
	display: flex;
	justify-content: space-between;
}
/*aqui est� o tamaho  e caracteristicas do bot�o d op��es*/
.op��es-botao, .imagem-opicao {
	height: 25px;
	width: 30px;
	background-color: #151C48;
	border: none;
}

/*aqui est� a aprecia dos bot�es*/
.enfermagem, .nutricao, .fisioterapia, .nova-consulta,
	.pesquisa-consulta, .cadastro-paciente, .botao-voltar, .botao-deslogar,
	.botao { /*o id � para o bot�o de pesquisa*/
	height: 55px;
	width: 150px;
	border: none;
	margin-left: 20px;
	margin-bottom: 10px;
	border-radius: 5px;
	font-size: 15px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}
/*colocando as cores dos botoes coloridos*/
.nova-consulta {
	background-color: #EA8D37;
	color: #ffffff;
	margin-top: 40px;
}

.pesquisa-consulta {
	background-color: #F40404;
	color: #ffffff;
}

.cadastro-paciente {
	background-color: #868AA5;
	color: #ffffff;
}

/*aqui est� a a��o dos bot�es de crscer*/
.novo-botao:hover, .enfermagem:hover, .nutricao:hover, .fisioterapia:hover,
	.nova-consulta:hover, .pesquisa-consulta:hover, .cadastro-paciente:hover,
	.botao:hover, .botao-voltar:hover, .botao-deslogar:hover {
	cursor: pointer;
	transform: scale(1.05);
}

.emoji-fisioterapia, .emoji-nutricao, .emoji-enfermagem {
	/*tamanho padr�o dos emojis das especialidades*/
	height: 20px;
	width: 20px;
}

/*AQUI ESTA A PARTE DO VERS�O MOBILE*/
@media ( max-width : 720px) {
	aside {
		height: 15vh; /*calcullo de cabe�alho com o corpo*/
		width: 100vw;
		display: flex;
		justify-content: space-between;
		overflow-x: scroll;
		float: none;
		padding-top: 2vh;
	}
	.nova-consulta { /*dist�ncia do 1 bot�o do cabe�alho*/
		margin-top: 0px;
	}
	.enfermagem {
		margin-right: 5px;
	}
	.enfermagem, .nutricao, .fisioterapia, .nova-consulta,
		.pesquisa-consulta, .cadastro-paciente {
		height: 55px;
		width: 26vw;
	}
}
.centralizar {
	/*ele centraliza o main*/
	display: flex;
	justify-content: center;
}
</style>
	<style>
main {
	width: 400px; /*largura da caixa azul*/
	width-max: auto;
	height: auto; /*tamanho da caixa azul*/
	border-radius: 15px; /*arestas aredontadas*/
	margin-top: 28px;
	/*ver com o samuel se essa altura est� boa, pq n�o vai dar para seguir a ideia do luciano de 8px*/
	background-color: #151C48;
	display: flex;
	flex-direction: column;
	justify-content: center;
	padding: 20px;
}
</style>
	<header>
		<div id="ciasc">
			<strong> C . I . A . S . C</strong>
		</div>
		<a onclick="location.href='informacoes-usuario'"><P>menu</P></a>
	</header>
	<!--este botao tem que levar um pop up-->
	<aside>

		<button type="button" class="nova-consulta"
			onclick="location.href='nova-consulta'">
			<strong>Novo Agendamento</strong>
		</button>
		<br>

		<button type="button" class="pesquisa-consulta"
			onclick="location.href='pesquisa-consulta'">
			<strong>Pesquisa Consulta</strong>
		</button>
		<br>
		<button type="button" class="cadastro-paciente"
			onclick="location.href='cadastro-consulta'">
			<strong>Cadastro Paciente</strong>
		</button>
		<br>
		<button type="button" class="fisioterapia"
			onclick="HorariosDisponiveis(1)">
			<strong> Fisioterapia</strong>
		</button>
		<br>
		<button class="nutricao" onclick="HorariosDisponiveis(2)">
			<strong> Nutri��o</strong>
		</button>
		<br>
		<button class="enfermagem" onclick="HorariosDisponiveis(3)">
			<strong> Enfermagem</strong>
		</button>
		<br>
	</aside>
	<div class="centralizar">
		<main>
			<div>
				<form action="" method="post">
					<label for="mudar-senha" id="label-m-senha">Mudar de Senha</label><br>
					<input type="text" id="mudar-senha">
			</div>
			<a href="index-inicio.html">
				<button type="button" id="botao">Mudar</button>
			</a>
			</form>
		</main>
	</div>
	<script>
	const modal = document.getElementById('modal');
	const fade = document.getElementById('fade');
	//o togle serve para se o que se refere no caso a classe est� ela � removida se n�o � colocada
	const toggleModal = () => {
	  modal.classList.toggle("hide");
	  fade.classList.toggle("hide");
	}
	///////////////////////////////////////////////////////////////////////

	//aqui � para aparecer os bot�es de hora de cada especialidade

	const main = document.querySelector("main");
	var contador = 0;//os id's de cada bot�o vai ser incremntado
	function HorariosDisponiveis(buttonId) {//tm como parametro o valor que numero que � o id disponivl no file.json
	  //let descobre = buttonId;//descobre o id dado como parametro da fun��o
	  main.innerHTML = "";//limpa o main
	  
	  const coluna = document.createElement("div");//recebe as caixas dos horarios
	    main.appendChild(coluna);
	    coluna.style.paddingBottom = "45px";//por causa do tamanho dos bot�es n�o ficarem de fora do main
	  const titulo = document.querySelector("title");
	  if(buttonId == 1){
		titulo.innerHTML = "Fisioterapia";

	    //contador = 0;//cria valores para cada bot�o
	    const botao = document.createElement("button");
        coluna.appendChild(botao);
        botao.type = "button";
        botao.onclick = buscarDados;
        botao.className = "botao1";//� por causa do style
        botao.innerHTML ="14:00";
        
        const botao1 = document.createElement("button");
        coluna.appendChild(botao1);
        botao1.type = "button";
        botao1.className = "botao1";//� por causa do style
        botao1.innerHTML = "15:00";
        
        const botao2 = document.createElement("button");
        coluna.appendChild(botao2);
        botao2.type = "button";
        botao2.className = "botao1";//� por causa do style
        botao2.innerHTML = "16:00";
        
        const botao3 = document.createElement("button");
        coluna.appendChild(botao3);
        botao3.type = "button";
        botao3.className = "botao1";//� por causa do style
        botao3.innerHTML ="17:00";
 /////////////////////////////////////////////////////////////////////////////////////////
     function buscarDados() {
	window.alert("funcionou");
    }
 /////////////////////////////////////////////////////////////////////////////////////////
	  }
	  if(buttonId == 2){
			titulo.innerHTML = "Nutri��o";

		    //contador = 0;//cria valores para cada bot�o
		    const botao = document.createElement("button");
	        coluna.appendChild(botao);
	        botao.type = "button";
	        botao.onclick = buscarDados;
	        botao.className = "botao1";//� por causa do style
	        botao.innerHTML ="13:30";
	        
	        const botao1 = document.createElement("button");
	        coluna.appendChild(botao1);
	        botao1.type = "button";
	        botao1.className = "botao1";//� por causa do style
	        botao1.innerHTML = "14:00";
	        
	        const botao2 = document.createElement("button");
	        coluna.appendChild(botao2);
	        botao2.type = "button";
	        botao2.className = "botao1";//� por causa do style
	        botao2.innerHTML = "15:00";
	        
	        const botao3 = document.createElement("button");
	        coluna.appendChild(botao3);
	        botao3.type = "button";
	        botao3.className = "botao1";//� por causa do style
	        botao3.innerHTML ="16:00";
	        
	        const botao4 = document.createElement("button");
	        coluna.appendChild(botao4);
	        botao4.type = "button";
	        botao4.className = "botao1";//� por causa do style
	        botao4.innerHTML ="16:30";
	 /////////////////////////////////////////////////////////////////////////////////////////
	     function buscarDados() {
		 let horaescolhida = botao.value;
		 console.log("funciona "+horaescolhida);

	    }
	 /////////////////////////////////////////////////////////////////////////////////////////
		  }
	  if(buttonId == 3){
			titulo.innerHTML = "Enfermagem";

		    //contador = 0;//cria valores para cada bot�o
		    const botao = document.createElement("button");
	        coluna.appendChild(botao);
	        botao.type = "button";
	        botao.onclick = buscarDados;
	        botao.className = "botao1";//� por causa do style
	        botao.innerHTML ="13:00";
	        
	        const botao1 = document.createElement("button");
	        coluna.appendChild(botao1);
	        botao1.type = "button";
	        botao1.className = "botao1";//� por causa do style
	        botao1.innerHTML = "14:00";
	        
	        const botao2 = document.createElement("button");
	        coluna.appendChild(botao2);
	        botao2.type = "button";
	        botao2.className = "botao1";//� por causa do style
	        botao2.innerHTML = "15:00";
	        
	        const botao3 = document.createElement("button");
	        coluna.appendChild(botao3);
	        botao3.type = "button";
	        botao3.className = "botao1";//� por causa do style
	        botao3.innerHTML ="16:00";
	        
	        const botao4 = document.createElement("button");
	        coluna.appendChild(botao4);
	        botao4.type = "button";
	        botao4.className = "botao1";//� por causa do style
	        botao4.innerHTML ="17:00";
	        
	        const botao5 = document.createElement("button");
	        coluna.appendChild(botao5);
	        botao5.type = "button";
	        botao5.className = "botao1";//� por causa do style
	        botao5.innerHTML ="18:00";
	        
	        const botao6 = document.createElement("button");
	        coluna.appendChild(botao6);
	        botao6.type = "button";
	        botao6.className = "botao1";//� por causa do style
	        botao6.innerHTML ="19:00";
	        
	        const botao7 = document.createElement("button");
	        coluna.appendChild(botao7);
	        botao7.type = "button";
	        botao7.className = "botao1";//� por causa do style
	        botao7.innerHTML ="20:00";
	        
	        const botao8 = document.createElement("button");
	        coluna.appendChild(botao8);
	        botao8.type = "button";
	        botao8.className = "botao1";//� por causa do style
	        botao8.innerHTML ="20:20";
	 /////////////////////////////////////////////////////////////////////////////////////////
	     function buscarDados() {
		 let horaescolhida = botao.value;
		 console.log("funciona "+horaescolhida);

	    }
	 /////////////////////////////////////////////////////////////////////////////////////////
		  }
	}
	</script>
</body>
</html>