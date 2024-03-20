<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<link rel="icon" type="image/svg+xml" href="./iconedociasc.svg" />
<meta name="viewport" content="width=device-width">
<title>Cadastro Paciente</title>
<link rel="stylesheet" href="./padrao.css">
<link rel="stylesheet" href="./Inicio.css">
</head>
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
	/*arrumar aqui para quando houver alteração da div com os negocios a main acompanhar em relação a altura*/
	border-radius: 5px;
	margin-top: 32px;
	padding-left: 60px;
	/*isso é a distância dos objetos da berada esquerda da div, só para não ficar muito próximo*/
	background-color: #151C48;
	color: white;
}

.linha1 {
	display: flex;
	/*aqui é para os inputs ficarem um do lado do oputro na linha*/
	gap: 20px;
	width: 600px;
}

.linha2 {
	display: flex;
	/*aqui é para os inputs ficarem um do lado do oputro na linha*/
	gap: 20px;
}

.linha3 {
	display: flex;
	/*aqui é para os inputs ficarem um do lado do oputro na linha*/
	gap: 20px;
}

.caixa-de-dentro {
	/*aqui é para vc colocar os itens da caixa em ordem separada do botão*/
	display: flex;
	/*aqui é para colocar as pequenas caixas de itens um do lado do outro*/
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

/*esse é da tela de cadastro de paciente*/
#idade {
	width: 100px;
}

.botao {
	/*o id é para o botão de pesquisa*/
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

/*aqui é para os de segunda linha dar uma margin top*/
#caixa-cpf, #caixa-telefone, #caixa-telefone1, #caixa-especialidade,
	#caixa-data, #caixa-hora, #caixa-nascimento, #caixa-idade, #caixa-nome,
	#caixa-email, #caixa-endereco {
	/*aqui é para distânciar essa caixa das de cima*/
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
/*BOTÕES DA DATA*/

/*aqui está aparte dos tickets que serão reduzidos*/
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
	/*distância do botão de baixo*/
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
	/*distânciar a hora do topo*/
	width: 190px;
	/*mesma que o botão*/
	height: 40px
		/*menos que o tamanho do botão para que haja espaço para os ticket*/
}

/*titulo de cada uma das especialidades*/
h2 {
	display: flex;
	justify-content: center;
	margin-top: 10px;
}

/*  AQUI ESTÁ A TELA DE USUARIO*/
#foto {
	/*DESCOBRIR COMO DEIXAR A FOTO REDODA NA CAIXINHA */
	height: 80px;
	width: 80px;
	border-radius: 100px;
}

#cor-de-fundo-foto {
	/*posição da foto no main*/
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

/*AQUI ESTA A PARTE DO VERSÃO MOBILE*/
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
		/*aqui é para os inputs ficarem um do lado do oputro na linha*/
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

	/*esse é da tela de cadastro de paciente*/
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
	font-family: 'Tanseek Árabe Moderno Médio', 'Arial Narrow', Arial,
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
	height: 95vh; /*calcullo de cabeçalho com o corpo*/
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
	height: 5vh; /*calcullo de cabeçalho com o corpo*/
	display: flex;
	justify-content: space-between;
}
/*aqui está o tamaho  e caracteristicas do botão d opções*/
.opções-botao, .imagem-opicao {
	height: 25px;
	width: 30px;
	background-color: #151C48;
	border: none;
}

/*aqui está a aprecia dos botões*/
.enfermagem, .nutricao, .fisioterapia, .nova-consulta,
	.pesquisa-consulta, .cadastro-paciente, .botao-voltar, .botao-deslogar,
	.botao { /*o id é para o botão de pesquisa*/
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

/*aqui está a ação dos botões de crscer*/
.novo-botao:hover, .enfermagem:hover, .nutricao:hover, .fisioterapia:hover,
	.nova-consulta:hover, .pesquisa-consulta:hover, .cadastro-paciente:hover,
	.botao:hover, .botao-voltar:hover, .botao-deslogar:hover {
	cursor: pointer;
	transform: scale(1.05);
}

.emoji-fisioterapia, .emoji-nutricao, .emoji-enfermagem {
	/*tamanho padrão dos emojis das especialidades*/
	height: 20px;
	width: 20px;
}

/*AQUI ESTA A PARTE DO VERSÃO MOBILE*/
@media ( max-width : 720px) {
	aside {
		height: 15vh; /*calcullo de cabeçalho com o corpo*/
		width: 100vw;
		display: flex;
		justify-content: space-between;
		overflow-x: scroll;
		float: none;
		padding-top: 2vh;
	}
	.nova-consulta { /*distância do 1 botão do cabeçalho*/
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
</style>
<body>

	<header>
		<div id="ciasc">
			<strong> C . I . A . S . C</strong>
		</div>
		<a onclick="location.href='informacoes-usuario'"><P>menu</P></a>
	</header>
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
			onclick="location.href='cadastro-paciente'">
			<strong>Cadastro Paciente</strong>
		</button>
		<br>
		<button type="button" class="fisioterapia"
			onclick="HorariosDisponiveis(1)">
			<strong> Fisioterapia</strong>
		</button>
		<br>
		<button class="nutricao" onclick="HorariosDisponiveis(2)">
			<strong> Nutrição</strong>
		</button>
		<br>
		<button class="enfermagem" onclick="HorariosDisponiveis(3)">
			<strong> Enfermagem</strong>
		</button>
		<br>
	</aside>
	<!--AQUUI ESTÁ A DIFERENÇA DO CADASTRO DE NOVA CONSULTA-->
	<div class="centralizar">
		<main>
			<div class="caixa-de-dentro">
				<form action="arquivosJSP/processaDadosPaciente.jsp" method="post">
					<!--AQUI É PARA COLOCAR O JAVA-->
					<div class="linha1">
						<!--aqui é para deixar o nome ao lado do email-->
						<div id="caixa-nome">
							<label class="nome" for="nome">Nome</label> <br> <input
								type="text" id="nome" name="nome" required>
						</div>
						<div id="caixa-nascimento">
							<label class="nascimento" for="nascimento">Data
								Nascimento</label> <br> <input type="date" id="nascimento"
								name="nascimento">
						</div>
					</div>
					<!--aqui termina a lina 1-->
					<div class="linha2">
						<!--aqui é para deixar o nome ao lado do email-->
						<div id="caixa-cpf">
							<label class="cpf" for="cpf">CPF</label> <br> <input
								type="text" id="cpf" name="cpf">
						</div>
						<div id="caixa-idade">
							<label class="idade" for="idade">Idade</label> <br> <input
								type="number" id="idade" name="idade" required>
						</div>

						<div id="caixa-endereco">
							<label class="telefone" for="endereco">Endereço</label> <br>
							<input type="" id="endereco" name="endereco">
						</div>

					</div>
					<!--aqui termina a linha 2-->
					<div class="linha3">
						<!--aqui é para deixar o nome ao lado do email-->
						<div id="caixa-email">
							<label class="e-mail" for="email">E-mail</label> <br> <input
								type="email" id="email" name="email">
						</div>

						<div id="caixa-telefone">
							<label class="telefone" id="tel1" for="telefone">Telefone
								1</label> <br> <input type="tel" id="telefone" name="Telefone 1"
								required />
						</div>
						<div id="caixa-telefone1">
							<label class="telefone" id="tel2" for="telefone_1">Telefone
								2</label> <br> <input type="tel" id="telefone1" name="telefone2_">
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
		<!--AQUI ESTÁ O STYLE QUE DEFINE A APARENCIA DO MODAL-->
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
	position: fixed; /*ficara por cima de todos*/
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.6);
	z-index: 5; /*é para ficar a cima de todos os outros arquivos*/
}

#modal {
	position: fixed;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%); /**mudar a margem do conteudo*/
	z-index: 10;
	color: black;
	max-width: 90%;
}

#modal.hide, #fade.hide {
	opacity: 0; /*paar sumir com o modale fade*/
	pointer-events: none;
	/*é para deixar sem eventos seestiver escooondido*/
}

#fade, #modal {
	transition: 0.5s;
	opacity: 1;
	pointer-events: all;
	/*quandoa a opacidade for = 1 pode ocorerr os evenetos*/
}
</style>

		<!--AQUI ESTÁ O  QUE ESCURECE A TELA -->
		<div id="fade" class="hide"></div>
		<!--aqui é para a opacidade-->
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
		<script>
	const modal = document.getElementById('modal');
	const fade = document.getElementById('fade');
	//o togle serve para se o que se refere no caso a classe está ela é removida se não é colocada
	const toggleModal = () => {
	  modal.classList.toggle("hide");
	  fade.classList.toggle("hide");
	}
	///////////////////////////////////////////////////////////////////////

	//aqui é para aparecer os botões de hora de cada especialidade

	const main = document.querySelector("main");
	var contador = 0;//os id's de cada botão vai ser incremntado
	function HorariosDisponiveis(buttonId) {//tm como parametro o valor que numero que é o id disponivl no file.json
	  //let descobre = buttonId;//descobre o id dado como parametro da função
	  main.innerHTML = "";//limpa o main
	  
	  const coluna = document.createElement("div");//recebe as caixas dos horarios
	    main.appendChild(coluna);
	    coluna.style.paddingBottom = "45px";//por causa do tamanho dos botões não ficarem de fora do main
	  const titulo = document.querySelector("title");
	  if(buttonId == 1){
		titulo.innerHTML = "Fisioterapia";

	    //contador = 0;//cria valores para cada botão
	    const botao = document.createElement("button");
        coluna.appendChild(botao);
        botao.type = "button";
        botao.onclick = buscarDados;
        botao.className = "botao1";//é por causa do style
        botao.innerHTML ="14:00";
        
        const botao1 = document.createElement("button");
        coluna.appendChild(botao1);
        botao1.type = "button";
        botao1.className = "botao1";//é por causa do style
        botao1.innerHTML = "15:00";
        
        const botao2 = document.createElement("button");
        coluna.appendChild(botao2);
        botao2.type = "button";
        botao2.className = "botao1";//é por causa do style
        botao2.innerHTML = "16:00";
        
        const botao3 = document.createElement("button");
        coluna.appendChild(botao3);
        botao3.type = "button";
        botao3.className = "botao1";//é por causa do style
        botao3.innerHTML ="17:00";
 /////////////////////////////////////////////////////////////////////////////////////////
     function buscarDados() {
	window.alert("funcionou");
    }
 /////////////////////////////////////////////////////////////////////////////////////////
	  }
	  if(buttonId == 2){
			titulo.innerHTML = "Nutrição";

		    //contador = 0;//cria valores para cada botão
		    const botao = document.createElement("button");
	        coluna.appendChild(botao);
	        botao.type = "button";
	        botao.onclick = buscarDados;
	        botao.className = "botao1";//é por causa do style
	        botao.innerHTML ="13:30";
	        
	        const botao1 = document.createElement("button");
	        coluna.appendChild(botao1);
	        botao1.type = "button";
	        botao1.className = "botao1";//é por causa do style
	        botao1.innerHTML = "14:00";
	        
	        const botao2 = document.createElement("button");
	        coluna.appendChild(botao2);
	        botao2.type = "button";
	        botao2.className = "botao1";//é por causa do style
	        botao2.innerHTML = "15:00";
	        
	        const botao3 = document.createElement("button");
	        coluna.appendChild(botao3);
	        botao3.type = "button";
	        botao3.className = "botao1";//é por causa do style
	        botao3.innerHTML ="16:00";
	        
	        const botao4 = document.createElement("button");
	        coluna.appendChild(botao4);
	        botao4.type = "button";
	        botao4.className = "botao1";//é por causa do style
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

		    //contador = 0;//cria valores para cada botão
		    const botao = document.createElement("button");
	        coluna.appendChild(botao);
	        botao.type = "button";
	        botao.onclick = buscarDados;
	        botao.className = "botao1";//é por causa do style
	        botao.innerHTML ="13:00";
	        
	        const botao1 = document.createElement("button");
	        coluna.appendChild(botao1);
	        botao1.type = "button";
	        botao1.className = "botao1";//é por causa do style
	        botao1.innerHTML = "14:00";
	        
	        const botao2 = document.createElement("button");
	        coluna.appendChild(botao2);
	        botao2.type = "button";
	        botao2.className = "botao1";//é por causa do style
	        botao2.innerHTML = "15:00";
	        
	        const botao3 = document.createElement("button");
	        coluna.appendChild(botao3);
	        botao3.type = "button";
	        botao3.className = "botao1";//é por causa do style
	        botao3.innerHTML ="16:00";
	        
	        const botao4 = document.createElement("button");
	        coluna.appendChild(botao4);
	        botao4.type = "button";
	        botao4.className = "botao1";//é por causa do style
	        botao4.innerHTML ="17:00";
	        
	        const botao5 = document.createElement("button");
	        coluna.appendChild(botao5);
	        botao5.type = "button";
	        botao5.className = "botao1";//é por causa do style
	        botao5.innerHTML ="18:00";
	        
	        const botao6 = document.createElement("button");
	        coluna.appendChild(botao6);
	        botao6.type = "button";
	        botao6.className = "botao1";//é por causa do style
	        botao6.innerHTML ="19:00";
	        
	        const botao7 = document.createElement("button");
	        coluna.appendChild(botao7);
	        botao7.type = "button";
	        botao7.className = "botao1";//é por causa do style
	        botao7.innerHTML ="20:00";
	        
	        const botao8 = document.createElement("button");
	        coluna.appendChild(botao8);
	        botao8.type = "button";
	        botao8.className = "botao1";//é por causa do style
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