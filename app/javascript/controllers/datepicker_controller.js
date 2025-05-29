import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      mode: "range",
      enableTime: true,          // <-- Enable time picker
      time_24hr: true,
      altInput: true,
      altFormat: "F j, Y - H:i",
      dateFormat: "Y-m-d",
      minDate: "today",
      minTime: "09:00",
      maxTime: "19:30",
      maxDays: 1,
      minuteIncrement: 30,      // <-- Set minute increment to 30 minutes
    })
  }
}
