import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const element = document.querySelector('#banner-typed-text');

  if (element) {
    new Typed(element, {
      strings: ["the right event", "the right organizer", "or the right team"],
      typeSpeed: 100,
      loop: true,
      loopCount: Infinity
    });
   }
};

export { loadDynamicBannerText };