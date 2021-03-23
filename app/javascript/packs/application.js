// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// import Rails from "@rails/ujs"
// import "@hotwired/turbo-rails"
import { Turbo } from "@hotwired/turbo-rails"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import { moveProgressBar } from './plugins/move_progress_bar.js'
//Rails.start()
ActiveStorage.start()

import "controllers"


document.addEventListener('turbo:click', (e) => {
  // Call your JS functions here as usual
  moveProgressBar(event)
 })


document.addEventListener('turbo:submit-end', (event) => {
  console.log('hello hello!!!')
  moveProgressBar(event);
})





