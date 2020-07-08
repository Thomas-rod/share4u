import Typed from 'typed.js';

const loadDynamicBannerText = () => {

  if (document.querySelector('.banner.typed')){
    new Typed('#banner-typed-text', {
      strings: ["<h2 class='font-typed-js tiktok-font'>TikTok</h2>", "<h2 class='font-typed-js instagram-font'>Instagram</h2>", "<h2 class='font-typed-js snapchat-font'>Snapchat</h2>","<h2 class='font-typed-js twitter-font'>Twitter</h2>", "<h2 class='font-typed-js youtube-font'>Youtube</h2>", "<h2 class='font-typed-js other-font'>Et plus encore...</h2>"],
      typeSpeed: 80,
      fadeOut: true,
      loop: true,
      showCursor: false,
      fadeOut: false
    });
  }
}
export { loadDynamicBannerText };
