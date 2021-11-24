import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['items', 'input', "container"];

  send(event) {

    event.preventDefault();
if (event) {
    this.itemsTargets.forEach((card) => {
      let query = this.inputTarget.value;
      if (card.innerText.includes(query)) {
        this.containerTarget.innerHTML = "";
        this.containerTarget.insertAdjacentElement("beforeend", card);
      }
    });
  }
  }
}
