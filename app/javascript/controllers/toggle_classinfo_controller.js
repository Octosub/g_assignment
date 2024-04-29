import { Controller } from "@hotwired/stimulus"


export default class extends Controller {

  toggle(event) {
    const hiddenCourseCard = event.currentTarget.parentElement.parentElement.parentElement.querySelector('.hidden-course-card')
    if (hiddenCourseCard) {
      hiddenCourseCard.classList.toggle('d-none')
    }
  }
}
