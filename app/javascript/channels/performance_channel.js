import consumer from "./consumer";

const initPerformanceCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.performanceId;
    consumer.subscriptions.create({ channel: "PerformanceChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('afterbegin', data);
        messagesContainer.scrollTop = 0;
      },
    });
  }
}

export { initPerformanceCable };