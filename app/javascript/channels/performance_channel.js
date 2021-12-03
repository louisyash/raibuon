import consumer from "./consumer";
import anime from "animejs/lib/anime.es";

const initPerformanceCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.performanceId;
    consumer.subscriptions.create({ channel: "PerformanceChannel", id: id }, {
      received(data) {
        const placeholder = document.getElementById('message-placeholder');
        if(placeholder) {
          placeholder.remove();
        }
        if(data.message) {
          addMessages(data.message, messagesContainer)
        }else if(data.tip){
          addTips(data.tip);
        }
      },
    });
  }
}
//targets: `#message-${data.id}`,
const addMessages = (message, messagesContainer) => {
  console.log('ME EJECUTO DESPUES');
  const messageDiv = document.createElement('div');
  messageDiv.innerHTML = message;
  if(messageDiv.querySelector('.content-message')){
    const authorId = parseInt(messageDiv.querySelector('.content-message').dataset.authorId)
    const currentUserId = parseInt(document.querySelector('.message-container').dataset.userId)
    if(currentUserId !== authorId ){
      messageDiv.querySelector('.content-message').classList.remove('mine')
    }
  }
  messagesContainer.insertAdjacentElement('afterbegin', messageDiv);
  messagesContainer.scrollTop = 0;
  document.getElementById("message_content").value = null;
}

const addTips = (tips) => {
  console.log('VIDA HPTA');
  const tipsContainer = document.querySelector('#tip-amount')
  tipsContainer.outerHTML = tips
}


export { initPerformanceCable };
