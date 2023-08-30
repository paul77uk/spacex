import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="displaybookingform"
export default class extends Controller {
  static targets = ["form"]

  connect() {
    console.log("hello")
  }

  fire() {
    // console.log("something")
    this.formTarget.classList.toggle("d-none");
  }
}
