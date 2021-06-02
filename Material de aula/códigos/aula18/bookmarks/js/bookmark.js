/* import { enviar } from './rest.js'; */

function redireciona(resposta, rota){

  console.log(resposta);
  window.location.href = rota; /* redireciona para a rota dada */

}

function redirecionaResposta(evento, rotaRedireção) {
  enviar(evento, resposta => redireciona(resposta, rotaRedireção));
}


function apagar(evento, rotaRedireção) {
  evento.preventDefault();
  const elemento = evento.currentTarget;
  const url = elemento.action;

  console.log('delete url= ', url);
  remover( url,  resposta => redireciona(resposta, rotaRedireção));
}
