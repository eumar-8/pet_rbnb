import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["<i>if you are a animal lover, don't lost this oportunity! </i>","be happy and make others happy........"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };

