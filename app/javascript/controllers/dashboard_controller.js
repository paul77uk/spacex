import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard"
export default class extends Controller {
  static targets = ["cards", "booking"]

  connect() {
    // console.log("hello")
  }

  fire() {
    // console.log("something")
    // console.log(this.cardsTarget)
    this.cardsTarget.classList.toggle("d-none");
    this.bookingTarget.classList.remove("d-none");
  }
}
