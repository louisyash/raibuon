import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['display', 'box'];

  display(){
    this.boxTarget.classList.toggle('messages-content')
    if (this.displayTarget.innerHTML === 'View 4 more messages'){
      this.displayTarget.innerHTML = 'View less';
    }else{
      this.displayTarget.innerHTML = 'View 4 more messages';
    }
  }
}
