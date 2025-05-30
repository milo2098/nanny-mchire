import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      mode: "range",
      enableTime: true,
      time_24hr: true,
      altInput: true,
      altFormat: "F j, Y - H:i",
      dateFormat: "Y-m-d",
      minDate: "today",
      minTime: "09:00",
      maxTime: "19:30",
      minuteIncrement: 30,
    })
  }
}
