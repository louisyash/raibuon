import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['form'];

  toggle() {
    this.formTarget.classList.toggle('tipping-form-hidden');
    this.formTarget.classList.toggle('tipping-form-show');
  }
}
