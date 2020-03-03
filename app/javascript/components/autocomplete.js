import 'js-autocomplete/auto-complete.css';
import autocomplete from 'js-autocomplete';

const renderItem = function (item) {
    let icon;
    if (item.type === 'user') {
      icon = '<i class="fab fa-github"></i>';
    } else if (item.type === 'city') {
      icon = '<i class="fas fa-code"></i>';
    }
    return `<div class="autocomplete-suggestion">${icon}<span>${item.name}</span></div>`
};

const autocompleteSearch = function() {
  const searchInput = document.getElementById('query');

  if (searchInput) {
    new autocomplete({
      selector: searchInput,
      minChars: 1,
      source: function(term, suggest){
        $.getJSON('/autocomplete',
          { query: term },
          function(data) {
            return data;
        }).then((data) => {
          const matches = []
          data.cities.forEach((city) => {
            matches.push({type: 'city', name: city });
          });
          data.users.forEach((user) => {
            matches.push({type: 'user', name: user });
          });
          suggest(matches)
        });
      },
      renderItem: renderItem,
    });
  }
};

export { autocompleteSearch };
