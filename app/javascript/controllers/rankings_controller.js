import { Evented } from "mapbox-gl";
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['artist'];

  showRankings(event) {
    const index = event.currentTarget.getAttribute("data-index")
    const artists = this.artistTargets
    artists.forEach((element) => {
      if (element.getAttribute("data-index") == index) {
        element.classList.add("d-none")
      } else if (element.classList.contains("d-none")) {
        element.classList.remove("d-none")
      }
    })
    console.log(index)
    console.log(artists)
 }
}
