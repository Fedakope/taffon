import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import "../plugins/flatpickr"
import "../plugins/modal";
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { modalEvents } from "../plugins/modal";
import { updateCategories } from '../plugins/cat';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { loadDynamicBannerText } from '../components/banner';
import { checkNotification } from "../components/notification";
import { initTabs } from "../components/tab";
import { initSkills } from '../plugins/add_skill';


checkNotification();
initTabs();
initUpdateNavbarOnScroll();
loadDynamicBannerText();
initMapbox();
initAutocomplete();
modalEvents();
initSkills();


// to keep a the end please...
updateCategories();

// Event photo uploader 



const formPicture = document.querySelector('.update_picture')
const inputHtml = formPicture.querySelector(".event_picture input")


inputHtml.addEventListener('input', (e) => {
  console.log("j'envoie le form")
  formPicture.submit()
});