const badge = document.querySelector('.notif-badge');

const checkNotification = () => {
  if (badge) {
    if (badge.innerText != "0 ") {
      badge.style.display = 'block';
    }
  }
};

export { checkNotification };