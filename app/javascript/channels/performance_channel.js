import consumer from "./consumer";

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

const addMessages = (message, messagesContainer) => {
  console.log(message)
  messagesContainer.insertAdjacentHTML('afterbegin', message);
  messagesContainer.scrollTop = 0;
}

const addTips = (tips) => {
  const tipsContainer = document.querySelector('#tip-amount')
  console.log(tips)
  tipsContainer.outerHTML = tips
}


export { initPerformanceCable };
