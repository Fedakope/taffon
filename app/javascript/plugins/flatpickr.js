import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {
  altInput: true,
  altFormat: "j F, Y",
  dateFormat: "Y-m-d",
  minDate: "today",
  defaultDate: ["today"]

})


flatpickr(".datetimepicker", {
  enableTime: true,
  dateFormat: "Y-m-d H:i",
  minDate: "today",
  defaultDate: ["today"]

})
