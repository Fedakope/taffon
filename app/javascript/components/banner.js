import Typed from 'typed.js';
const banner = document.querySelector('#banner-typed-text');
const loadDynamicBannerText = () => {
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["the right event", "the right organizer", "the right team"],
      typeSpeed: 100,
      loop: true,
      loopCount: Infinity
    });
  }
};

export { loadDynamicBannerText };