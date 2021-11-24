import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['display'];

  connect() {
    console.log(this.displayTarget);
  }
}
