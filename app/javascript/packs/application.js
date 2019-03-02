import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import "../plugins/flatpickr"
import "../plugins/modal";
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { modalEvents } from "../plugins/modal";
import { updateCategories } from '../plugins/cat';
import { initUpdateNavbarOnScroll } from '../components/navbar';


initUpdateNavbarOnScroll();
initMapbox();
initAutocomplete();
modalEvents();
updateCategories();