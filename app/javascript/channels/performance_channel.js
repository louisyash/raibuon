import consumer from "./consumer";
import anime from "animejs/lib/anime.es";

const initPerformanceCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.performanceId;
    consumer.subscriptions.create({ channel: "PerformanceChannel", id: id }, {
      received(data) {
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
  const tipsContainer = document.querySelector('#tip-amount')
  tipsContainer.outerHTML = tips
}


export { initPerformanceCable };
