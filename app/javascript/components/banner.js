import Typed from 'typed.js';
const banner = document.querySelector('#banner-typed-text');
const loadDynamicBannerText = () => {
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["le bon évènement", "le bon organisateur", "la bonne équipe"],
      typeSpeed: 150,
      loop: true,
      loopCount: Infinity
    });
  }
};

export { loadDynamicBannerText };