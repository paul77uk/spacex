import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard"
export default class extends Controller {
  static targets = ["spaceship", "booking"]

  connect() {
    // console.log("hello")
  }

  fire() {
    console.log("something")
    console.log(this.bookingTarget)
    this.bookingTarget.classList.toggle("d-none");
    this.spaceshipTarget.classList.remove("d-none");
  }
}
