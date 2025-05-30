import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ["start", "end"]

  connect() {
    this.startPicker = flatpickr(this.startTarget, {
      enableTime: true,
      time_24hr: true,
      altInput: true,
      altFormat: "F j, Y - H:i",
      dateFormat: "Y-m-d",
      minDate: "today",
      minTime: "09:00",
      maxTime: "19:30",
      minuteIncrement: 30,
      onChange: this.syncEndPicker.bind(this)
    })

    this.endPicker = flatpickr(this.endTarget, {
      enableTime: true,
      noCalendar: true,
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
  syncEndPicker(selectedDates) {
    if (selectedDates.length > 0) {
      const startDate = selectedDates[0];
      this.endPicker.set("minDate", startDate);
      this.endPicker.set("maxDate", startDate);
      this.endPicker.set("minTime", (startDate.getHours() + 1)+ ":" + startDate.getMinutes());
    }
  }
}
