import { Controller } from "@hotwired/stimulus"
import Swal from 'sweetalert2'


// Connects to data-controller="sweetalert"
export default class extends Controller {
  connect() {
    console.log("coucou c'est nous")

  }

  alert() {
    console.log("coucou c'est nous on est de retour")

    Swal.fire({
      template: '#my-template'
    })
  }

  booking_alert() {
    console.log("coucou c'est nous on est de retour")

    Swal.fire({
      template: '#my-template2'
    })
  }
}
