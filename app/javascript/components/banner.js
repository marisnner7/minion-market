import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["One Minion, Two Minions", "Buy Here"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
