// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { initPerformanceCable } from '../channels/performance_channel';
import { initMapbox } from '../plugins/init_mapbox';
import 'owl.carousel/dist/assets/owl.carousel.css';
import 'owl.carousel';

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:

  // initSelect2();
// Opacity fade for top nav search bar background
window.addEventListener('scroll', function () {
  var currScrollPos2 = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
  if (currScrollPos2 > 10) {
    document.getElementById('test').classList.add('navbar-fadein');
  } else {
    document.getElementById('test').classList.remove("navbar-fadein");
  }
}
);

     $('#owl-one').owlCarousel({
  loop: true,
  margin: 10,
  responsive:{
    0:{ items:1,},
    600:{ items:2,},
    800: { items: 3,}
   },
   nav: true,
   navText: ["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"]
 });


 $('#owl-performances-index').owlCarousel({
  loop: true,
  margin: 10,
  // 320px — 480px: Mobile devices. //
  // 481px — 768px: iPads, Tablets. //
  // 769px — 1024px: Small screens, laptops. //
  // 1025px — 1200px: Desktops, large screens. //
  // 1201px and more — Extra large screens, T //
  responsive:{
    0:{ items:1.5,},
    600:{ items:2.5,},
    800: { items: 3,
    }
   },
   nav: false,
   navText: ["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"]
 });


  initPerformanceCable();
  initMapbox();
  dropMenus();

});

import "controllers"
import { MapMouseEvent } from "mapbox-gl";

//const songs = document.querySelector("#song_titles_array").dataset.songs;
const songs = JSON.parse(document.querySelector("#song_titles_array").dataset.songs);
//const n = document.querySelector("#song_titles_array").dataset.n;
//console.log(jstest);
const changeSongButton = document.querySelector("#change-the-song-buttton");
//document.querySelector("#song_titles_array").dataset.n
changeSongButton.addEventListener("click", (event) => {

  let n = document.querySelector("#song_titles_array").dataset.n;
  let songNo = parseInt(n, 10)
  console.log(songNo);
  console.log(songs[songNo]);
  //console.log(songs[n]);
  document.getElementById("song_title_live_display").innerHTML = songs[songNo];
  (songNo >= (songs.length - 1)) ? songNo = 0 : songNo += 1;
  document.querySelector("#song_titles_array").dataset.n =  songNo
  //(n >= songs.length) ? n = 0;
  //console.log(n);
}); {

}


/* When the user clicks on the button,
toggle between hiding and showing the drop content */

function dropMenus() {
// #useroptions-dropdown
// #useroptions-dropdown-menu
const dropDownBtn = document.querySelector("#useroptions-dropdown");
dropDownBtn.addEventListener("click", (event) => {
  console.log(event);
  document.getElementById("useroptions-dropdown-menu").classList.toggle("show");
});

// #useroptions-dropup
// #useroptions-dropup-menu
const dropUpBtn = document.querySelector("#useroptions-dropup");
dropUpBtn.addEventListener("click", (event) => {
  console.log(event);
  document.getElementById("useroptions-dropup-menu").classList.toggle("show");
});
}

//.ro-button-useroptions-cssdropbtn

// Close the dropdown if the user clicks outside of it
window.onclick = function (event) {
  if (!event.target.matches('.ro-button-useroptions-cssdropbtn')) {
    var dropdowns = document.getElementsByClassName("ro-button-useroptions-cssdropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
