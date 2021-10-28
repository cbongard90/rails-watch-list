import Typed from "typed.js";

const loadDynamicBannerText = () => {
  new Typed("#banner-typed-text", {
    strings: ["Action", "Romance", "Classical", "Science-Fiction", "Fantastic"],
    typeSpeed: 100,
    loop: true,
  });
};

export { loadDynamicBannerText };
