import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static values = {
    dates: Array,
    price: Number
  };
  static targets = ["start", "end", "confirm", "price"]

  connect() {
    console.log("datepicker active")

    this.endTarget.disabled = true
    flatpickr(this.startTarget, {
      dateFormat: "d-m-Y",
      disable: this.datesValue,
      minDate: "today"
    })
  }

  startDateInput() {
    this.endTarget.disabled = false
    flatpickr(this.endTarget, {
      dateFormat: "d-m-Y",
      disable: this.datesValue,
      minDate: this.startTarget.value
    })
  }

  endDateInput() {
    let splitStartDate = this.startTarget.value.split("-")
    let splitEndDate = this.endTarget.value.split("-")

    let startDate = new Date([splitStartDate[1], splitStartDate[0], splitStartDate[2]].join("/"))
    let endDate = new Date([splitEndDate[1], splitEndDate[0], splitEndDate[2]].join("/"))

    let price = parseInt((endDate - startDate) / (1000 * 60 * 60 * 24), 10) * Number(this.priceValue)
    this.priceTarget.innerText = `${price}🖖`
    console.log(price)

    this.confirmTarget.disabled = false
  }
}
