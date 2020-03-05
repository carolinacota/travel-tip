import 'js-autocomplete/auto-complete.css';
import autocomplete from 'js-autocomplete';

const renderItem = function (item) {
    let icon, uri;
    if (item.type === 'user') {
      icon = '<i class="fas fa-user-circle"></i>';
      uri = `/${item.slug}`
    } else if (item.type === 'city') {
      icon = '<i class="fas fa-city"></i>';
      uri = '/cities/' + item.slug
    } else if (item.type === 'place') {
      icon = '<i class="fas fa-map-marker-alt"></i>';
      uri = `/cities/${item.city}/places/${item.slug}`
    }
    return `
      <div class="autocomplete-suggestion"
           data-uri="${uri}">
        ${icon}
        <span>${item.name}</span>
      </div>
    `
};

const onSelect = function(_event, _term, item) {
  window.location = item.dataset.uri
}

const autocompleteSearch = function() {
  const searchInput = document.getElementById('query') || document.getElementById('search-bar');
  console.log("Hello from AUTOCOMPLETE", "Input:", searchInput)

  if (searchInput) {
    console.log("Inside the IF")
    new autocomplete({
      selector: searchInput,
      minChars: 1,
      source: function(term, suggest){
        console.log("Hello from the SOURCE")
        $.getJSON('/autocomplete',
          { query: term },
          function(data) {
            console.log("Hello from the DATA", data)
            return data;
        }).then((data) => {
          console.log("Hello from the MATCHES", data)
          const matches = []
          data.cities.forEach((city) => {
            matches.push({type: 'city', name: city.name, slug: city.slug });
          });
          data.users.forEach((user) => {
            matches.push({type: 'user', name: user.name, slug: user.slug });
          });
          data.places.forEach((place) => {
            matches.push({type: 'place', name: place.name, city: place.city, slug: place.slug });
          });
          suggest(matches)
        });
      },
      renderItem: renderItem,
      onSelect: onSelect
    });
  }
};

export { autocompleteSearch };
