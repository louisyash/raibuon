import { Evented } from "mapbox-gl";
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['artist'];

 reveal(event){
   const index = event.currentTarget.getAttribute("data-index")
   const artists = this.artistTargets
   artists.forEach((element) => {
       element.classList.toggle("d-none")
     }
   )}
}
