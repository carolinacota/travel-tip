import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';


initMapbox();

import { autocompleteSearch } from '../components/autocomplete'

import { getCurrentPosition } from '../plugins/geolocation'
import { avatarUpload } from '../plugins/avatar_upload'

console.log("HELLO from APPLICATION JS")
autocompleteSearch();
getCurrentPosition();
avatarUpload()
