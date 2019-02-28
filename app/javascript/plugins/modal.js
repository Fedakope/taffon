
const modalEvents = () => { 
  const modalspans = document.querySelectorAll('#modalspan');
  modalspans.forEach((modalspan) => {
    const modal = modalspan.querySelector('#myModal');
    const btn = modalspan.querySelector("#myBtn");
    const span = modalspan.querySelector(".close");
      btn.onclick = function() {
        modal.style.display = "block";
      }
      span.onclick = function() {
        modal.style.display = "none";
      }
      window.onclick = function(event) {
        if (event.target == modal) {
          modal.style.display = "none";
        }
      }
  });
}



export { modalEvents };