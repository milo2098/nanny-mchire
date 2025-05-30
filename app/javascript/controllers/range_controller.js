import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="range"
export default class extends Controller {
  static targets = ["slider", "output"]
  connect() {
    this.update()
  }

  update() {
    this.outputTarget.textContent = this.sliderTarget.value
  }
}
