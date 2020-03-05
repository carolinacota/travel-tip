const currentLocation = document.getElementById('current-location');
const getCurrentPosition = function() {

  if (currentLocation) {

    currentLocation.addEventListener('click', (event) => {
      navigator.geolocation.getCurrentPosition((location) => {
        let latitude = location.coords.latitude;
        let longitude = location.coords.longitude;
        const accessToken = 'pk.eyJ1IjoiNGJpbGx5amFjayIsImEiOiJjazdjNTYwNTYxZ2xuM21wZm1ka3E3cDU1In0.5EFKm02hnCdgsEDXXAlxpA'
        fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${longitude},${latitude}.json?access_token=${accessToken}`)
          .then(response => response.json())
          .then((data) => {
            let position = data.features[0].context[2].text;
            window.location = `/cities/${position.toLowerCase()}`
          });
      });
    });
  }
}

export { getCurrentPosition };
