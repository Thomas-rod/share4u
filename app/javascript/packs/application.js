// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { modalSocials } from '../components/modalsocials';
import { closeIconModal } from '../components/closeiconmodal';
import { checkUrlValid } from '../components/checkurl';
import { loadDynamicBannerText } from '../components/typedjs';
import { landbotLoad } from '../components/landbot';
import { closeCouponIcon } from '../components/closecoupon';
import { previewImageOnFileSelect } from '../components/preview_image_onboarding';
import { modalOpenNetwork } from '../components/button_open_url_network';


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  // modalSocials();
  // closeIconModal();
  // checkUrlValid();
  loadDynamicBannerText();
  landbotLoad();
  closeCouponIcon();
  previewImageOnFileSelect();
  modalOpenNetwork();
});
