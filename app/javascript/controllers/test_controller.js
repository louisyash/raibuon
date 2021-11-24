import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['items', 'input', "container"];

  update() {
    const url = `${this.inputTarget.action}?query=${this.inputTarget.value}`
    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.containerTarget.outerHTML = data;
      })
  }
  // send(event) {
  //   let cards = this.itemsTargets
  //   let query = this.inputTarget.value;
  //   let container = this.containerTarget
  //   event.preventDefault();

  //   const showCards = () => {
  //     cards.forEach((card) => {
  //       if (card.innerText.includes(query)); {
  //         container.innerHTML = "";
  //         container.insertAdjacentHTML("beforeend", card);
  //         console.log(query)
  //       }
  //     });
  //   }
  //   if (event) {
  //     showCards()
  //     }
  // }
}
