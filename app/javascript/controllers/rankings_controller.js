import { Evented } from "mapbox-gl";
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['artist'];

//   showRankings(event) {
//     const index = event.currentTarget.getAttribute("data-index")
//     const artists = this.artistTargets
//     artists.forEach((element) => {
//       if (element.getAttribute("data-index") == index) {
//         element.classList.toggle("d-none")
//       } else if (element.classList.contains("d-none")) {
//         element.classList.remove("d-none")
//       }
//     })
//     console.log(index)
//     console.log(artists)
//  }

 reveal(event){
   console.log(event.currentTarget)
   const index = event.currentTarget.getAttribute("data-index")
   const artists = this.artistTargets
   console.log(artists)
   artists.forEach((element) => {
       element.classList.toggle("d-none")
     }
   )}
}
