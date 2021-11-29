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
            anime({
              targets: `#message-${data.id}`,
              translateX: 0,
              rotate: '1turn',
              backgroundColor: 'black',
              duration: 800
            });
        }else if(data.tip){
          addTips(data.tip);
        }
      },
    });
  }
}

const addMessages = (message, messagesContainer) => {
  messagesContainer.insertAdjacentHTML('afterbegin', message);
  messagesContainer.scrollTop = 0;
}

const addTips = (tips) => {
  const tipsContainer = document.querySelector('#tip-amount')
  tipsContainer.outerHTML = tips
}


export { initPerformanceCable };
