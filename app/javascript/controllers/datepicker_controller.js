import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static values = {dates: Array};
  static targets = ["start"]

  connect() {
    console.log(this.element)
    flatpickr(this.element, {
      dateFormat: "Y-m-d",
      disable: this.datesValue
    })
  }
}
