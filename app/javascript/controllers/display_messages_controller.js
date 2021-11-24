import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['display', 'box'];
  connect(){
    // console.log(this.boxTarget)
    // console.log(this.displayTarget)
  }

  display(){
    this.boxTarget.classList.toggle('messages-content')
    if (this.displayTarget.innerHTML === 'View 4 more messages'){
      this.displayTarget.innerHTML = 'Display less';
    }else{
      this.displayTarget.innerHTML = 'View 4 more messages';
    }
  }
}
