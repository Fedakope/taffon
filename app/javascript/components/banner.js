import Typed from 'typed.js';
const banner = document.querySelector('#banner-typed-text');
const loadDynamicBannerText = () => {
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["le bon technicien ^900","^900 le bon évènement ^900", "^900 le bon organisateur ^900", "^900 la bonne équipe ^900"],
      typeSpeed: 130,
      loop: true,
      backSpeed: 50,
      loopCount: Infinity
    });
  }
};

export { loadDynamicBannerText };