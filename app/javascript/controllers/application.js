import { Application } from "@hotwired/stimulus"
// import Flatpickr
import Flatpickr from 'stimulus-flatpickr'
const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }



// Import style for flatpickr
require("flatpickr/dist/flatpickr.css")

// Manually register Flatpickr as a stimulus controller
application.register('flatpickr', Flatpickr)