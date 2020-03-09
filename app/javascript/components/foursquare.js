import Rails from 'rails-ujs';

import 'js-autocomplete/auto-complete.css';
import autocomplete from 'js-autocomplete';

const capitalize = (string) => {
  return string.charAt(0).toUpperCase() + string.substring(1)
}
const renderItem = function (item) {
    let icon, uri;
    if (item.type === 'place') {
      icon = '<i class="fas fa-map-marker-alt"></i>';
    }
    return `
      <div class="autocomplete-suggestion"
           data-fsq_id="${item.fsq_id}">
        ${icon}
        <span>${capitalize(item.name)}</span>
      </div>
    `
};

const onSelect = function(_event, _term, item) {

  fetch('/places', {
          method: 'post',
          body: JSON.stringify({fsq_id: item.dataset.fsq_id}),
          headers: {
            'Content-Type': 'application/json',
            'X-CSRF-Token': Rails.csrfToken()
          },
          credentials: 'same-origin'
        })
  .then(response => {
    if (response.status === 200) {

    }
  })

  // window.location = item.dataset.uri
}

const foursquareSearch = function() {
  const searchInput = document.getElementById('foursquare-bar');
  // console.log(window.location)
  if (searchInput) {
    new autocomplete({
      selector: searchInput,
      minChars: 1,
      source: function(term, suggest){
        $.getJSON(window.location.pathname+"/foursquare",
          { query: term },
          function(data) {
            return data;
        }).then((data) => {

          const matches = []
          data.forEach((place) => {
            matches.push({type: 'place', name: place.name, fsq_id: place.fsq_id });
          });
          suggest(matches)
        });
      },
      renderItem: renderItem,
      onSelect: onSelect
    });
  }
};

export { foursquareSearch };
