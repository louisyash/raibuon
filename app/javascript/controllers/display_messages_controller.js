import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['display', 'box'];
  connect(){
    console.log(this.boxTarget)
  }

  display(){
    this.boxTarget.classList.toggle('messages-content')
  }
}
