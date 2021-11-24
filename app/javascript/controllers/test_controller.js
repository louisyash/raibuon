import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['items', 'input', "container"];

  send(event) {
    let cards = this.itemsTargets
    let query = this.inputTarget.value;
    let container = this.containerTarget
    event.preventDefault();

    const showCards = () => {
      cards.forEach((card) => {
        if (card.innerText.includes(query)); {
          // container.innerHTML = "";
          container.insertAdjacentHTML("beforeend", "<p>Hello</p>");
          console.log(query)
        }
      });
    }
    if (event) {
      showCards()
      }
  }
}
