import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {
  altInput: true,
  altFormat: "j F, Y",
  dateFormat: "Y-m-d",
  minDate: "today",
  inline: true,
})


flatpickr(".datetimepicker", {
  enableTime: true,
  dateFormat: "Y-m-d H:i",
  inline: true,
  minDate: "today",
})
