import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { tabsEventListener} from '../plugins/profile';


initMapbox();
initAutocomplete();
tabsEventListener();

$('[data-toggle="tooltip"]').tooltip();
