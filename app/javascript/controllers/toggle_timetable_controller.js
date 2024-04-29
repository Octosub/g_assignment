import { Controller } from "@hotwired/stimulus"


export default class extends Controller {

  toggle(event) {
    const wiseTimetable = event.currentTarget.parentElement.parentElement.querySelector('#WiSe-timetable')
    const soseTimetable = event.currentTarget.parentElement.parentElement.querySelector('#SoSe-timetable')

    const wiseToggleButton = event.currentTarget.parentElement.querySelector('#WiSe-toggle-button')
    const soseToggleButton = event.currentTarget.parentElement.querySelector('#SoSe-toggle-button')

    wiseTimetable.classList.toggle('d-none')
    soseTimetable.classList.toggle('d-none')

    wiseToggleButton.classList.toggle('active-toggle')
    soseToggleButton.classList.toggle('active-toggle')
  }
}
