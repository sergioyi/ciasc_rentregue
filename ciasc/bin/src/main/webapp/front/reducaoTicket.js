var botao = document.querySelectorAll('.ticket');
// Adiciona um ouvinte de evento para o clique no botão
botao.forEach(botao=>{
    botao.addEventListener("click", function() {
  // Obtém o valor atual do botão
  var valor = parseInt(botao.innerHTML);

  // Verifica se o valor é maior que 0
  if (valor > 0) {
    // Reduz o valor em 1
    valor--;

    // Atualiza o texto do botão com o novo valor
    botao.innerHTML = valor;
  }
});
});