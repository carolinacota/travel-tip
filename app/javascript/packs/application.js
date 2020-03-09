import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { placeMapbox } from '../plugins/place_mapbox';
import { initAvatarFilters } from '../components/avatar_filters';


initMapbox();
placeMapbox();

import { autocompleteSearch } from '../components/autocomplete'
import { foursquareSearch } from '../components/foursquare'

import { getCurrentPosition } from '../plugins/geolocation'
import { avatarUpload } from '../plugins/avatar_upload'

autocompleteSearch();
getCurrentPosition();
avatarUpload();
foursquareSearch();
avatarUpload()
initAvatarFilters();
