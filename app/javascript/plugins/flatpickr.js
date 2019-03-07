import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {
  dateFormat: "Y-m-d",
  minDate: "today",
  inline: true,
  static: true,
})


flatpickr(".datetimepicker", {
  inline: false,
  minDate: "today",
  enableTime: true,
  dateFormat: "Y-m-d H:i",
  static: true,
})
