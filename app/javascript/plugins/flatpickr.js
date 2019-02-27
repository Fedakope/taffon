import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {
  altInput: true
})


flatpickr(".datetimepicker", {
  enableTime: true
  altInput: true
})
