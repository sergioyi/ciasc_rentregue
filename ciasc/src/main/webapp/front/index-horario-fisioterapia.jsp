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
    <title>Horário de Fisioterapia</title>
    <link rel="stylesheet" href="./padrao.css">
    <link rel="stylesheet" href="./Inicio.css">
</head>

<body>
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
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6);
            z-index: 5;
        }

        #modal {
            position: fixed;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            z-index: 10;
            color: black;
            max-width: 90%;
        }

        #modal.hide,
        #fade.hide {
            opacity: 0;
            pointer-events: none;
        }

        #fade,
        #modal {
            transition: 0.5s;
            opacity: 1;
            pointer-events: all;
        }
    </style>

    <header>
        <div id="ciasc"><strong> C . I . A . S . C</strong></div>
        <a onclick="location.href='informacoes-usuario'""><img src="./opcao.png" alt="opções"
                class="imagem-opicao"></a>
    </header>

    <aside>
        <button type="button" class="nova-consulta" onclick="mostrar('NomeConsulta1', 'CPFConsulta1')"><strong>Novo
                Agendamento</strong></button>
        <br>
        <button type="button" class="pesquisa-consulta" onclick="mostrar('NomeConsulta2', 'CPFConsulta2')"><strong>Pesquisa
                Consulta</strong></button>
        <br>
        <button type="button" class="cadastro-paciente"
            onclick="mostrar('NomeConsulta3', 'CPFConsulta3')"><strong>Cadastro Paciente</strong></button>
        <br>
        <button type="button" class="fisioterapia" onclick="mostrar('NomeConsulta4', 'CPFConsulta4')"><img
                src="./fisioterapia.png" alt="fisioterapia" class="
                emoji-fisioterapia"><strong> Fisioterapia</strong>
        </button>
        <br>
        <button class="nutricao" onclick="location.href='nutricao'"><img src="./nutriçao.png" alt="nutricao"
                class="emoji-nutricao"><strong> Nutrição</strong></button>
        <br>
        <button class="enfermagem" onclick="location.href='enfermagem'"><img src="./enfermagem.png"
                alt="enfermagem" class="emoji-enfermagem"><strong>
                Enfermagem</strong></button>
        <br>
    </aside>

    <h2>Fisioterapia</h2>
    <div class="centralizar">
        <main id="main-fisioterapia">
            <div class="caixa-azul">
                <div class="coluna">
                    <!-- pega de 4 em 4 para fazer uma coluna -->
                    <form action="" method="post"></form>
                    <button type="button" class="botao1" id="ho1">
                        <div class="hora">14:00<br>
                            <div class="arrTicket">
                                <div id="ticket1">30</div>/30
                            </div>
                        </div>
                    </button>
                    <button type="button" class="botao1" id="ho2">
                        <div class="hora">15:00<br>
                            <div class="arrTicket">
                                <div id="ticket2">30</div>/30
                            </div>
                        </div>
                    </button>
                    <button type="button" class="botao1" id="ho3">
                        <div class="hora">16:00<br>
                            <div class="arrTicket">
                                <div id="ticket3">30</div>/30
                            </div>
                        </div>
                    </button>
                    <button type="button" class="botao1" id="ho4">
                        <div class="hora">17:00<br>
                            <div class="arrTicket">
                                <div id="ticket4">30</div>/30
                            </div>
                        </div>
                    </button>
                </div>
                <!-- FIM  pega de 4 em 4 para fazer uma coluna -->
                <input type="date" name="date1" id="botao-data">
                </form>
            </div>
            <!-- aqui está o fim do caixa azul -->
        </main>

        <button type="button" id="open-modal" onclick="mostrar()">click</button><!-- chamando mostrar -->

        <!-- AQUI ESTÁ O  QUE ESCURECE A TELA -->
        <div id="fade" class="hide"></div>
        <!-- aqui é para a opacidade -->
        <div id="modal" class="hide">
            <table id="tabela">
                <thead>
                    <th>Nome</th>
                    <th>Especialidade</th>
                    <th>Hora</th>
                </thead>
                <tbody id="corpo">
                    <!--  AQUI FICA A TABELA QUE VAI PUXAR DO LOCALSTORAGE -->
                </tbody>
            </table>
        </div>

    </div>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="js/reddd.js"></script>
    <script src="js/PessoasAgend.js"></script>
    <script>
        function mostrar(nomeConsulta, cpfConsulta) {
            const modal = $("#modal");
            const fade = $("#fade");

            // Fazer uma solicitação AJAX para obter detalhes
            $.ajax({
                url: "/seu-novo-endpoint-para-detalhes-da-consulta",
                method: "GET",
                data: { nomeConsultaDetalhes: nomeConsulta, cpfConsultaDetalhes: cpfConsulta },
                dataType: "json",
                success: function (data) {
                    // Verificar se os detalhes foram encontrados
                    if (data.nome) {
                        // Exibir os detalhes no modal
                        const tabela = $("#corpo");
                        tabela.html(`<tr><td>${data.nome}</td><td>${data.especialidade}</td><td>${data.hora}</td></tr>`);

                        // Exibir o modal
                        modal.removeClass("hide");
                        fade.removeClass("hide");
                    } else {
                        // Mostrar mensagem se a consulta não foi encontrada
                        alert("Consulta não encontrada");
                    }
                },
                error: function (error) {
                    console.error("Erro ao obter detalhes da consulta: " + error.responseText);
                }
            });
        }

        // Adicionar eventos de clique aos botões
        $("#ho1").click(function () {
            mostrar("NomeConsulta1", "CPFConsulta1");
        });

        $("#ho2").click(function () {
            mostrar("NomeConsulta2", "CPFConsulta2");
        });

        $("#ho3").click(function () {
            mostrar("NomeConsulta3", "CPFConsulta3");
        });

        $("#ho4").click(function () {
            mostrar("NomeConsulta4", "CPFConsulta4");
        });
    </script>
</body>

</html>
