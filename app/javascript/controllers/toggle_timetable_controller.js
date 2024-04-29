import { Controller } from "@hotwired/stimulus"


export default class extends Controller {

  toggle(event) {
    const wiseTimetable = event.currentTarget.parentElement.querySelector('#WiSe-timetable')
    const soseTimetable = event.currentTarget.parentElement.querySelector('#SoSe-timetable')

    wiseTimetable.classList.toggle('d-none')
    soseTimetable.classList.toggle('d-none')
  }
}
