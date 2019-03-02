const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-wagon');
  const logo = document.querySelector('.navbar-wagon-brand');
  const avatar = document.querySelector('.avatar');
  if (navbar) {
    window.addEventListener('scroll', () => { 
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-wagon-transparent');
        logo.style.display = 'none';
        avatar.style.display = 'none';
      } else {
        navbar.classList.remove('navbar-wagon-transparent');
        logo.style.display = 'block';
        avatar.style.display = 'block';
      }
    });
  }
};

export { initUpdateNavbarOnScroll };