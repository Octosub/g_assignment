import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["hiddenCourseInfo"]

  toggle() {
    this.hiddenCourseInfoTarget.classList.toggle("d-none");
  }
}
