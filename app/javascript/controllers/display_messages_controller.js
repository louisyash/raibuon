import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['display', 'box'];
  connect(){
    this.originalDisplayText = this.displayTarget.innerText
  }

  display(){
    this.boxTarget.classList.toggle('messages-content')
    if(!this.boxTarget.classList.contains('messages-content')){
      this.displayTarget.innerHTML = "view less"
    }else{
     this.displayTarget.innerText = this.originalDisplayText
    }
  }
}
