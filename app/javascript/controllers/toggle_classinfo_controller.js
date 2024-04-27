import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-classinfo"
export default class extends Controller {
  connect() {
    console.log("Classinfo Toggle Controller initialized");
  }
}
