import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["the right event", "the right organizer", "or the right team"],
    typeSpeed: 100,
    loop: true,
    loopCount: Infinity
  });
};

export { loadDynamicBannerText };