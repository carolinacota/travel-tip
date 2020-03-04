const currentLocation = document.getElementById('current-location');
const getCurrentPosition = function() {

  if (currentLocation) {

    currentLocation.addEventListener('click', (event) => {
console.log("running...", currentLocation)
      navigator.geolocation.getCurrentPosition((location) => {
        console.log("navigator")
        // event.preventDefault();
        // console.log(location);
        let latitude = location.coords.latitude;
        // console.log(latitude);
        let longitude = location.coords.longitude;
        const accessToken = 'pk.eyJ1IjoiNGJpbGx5amFjayIsImEiOiJjazdjNTYwNTYxZ2xuM21wZm1ka3E3cDU1In0.5EFKm02hnCdgsEDXXAlxpA'
        fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${longitude},${latitude}.json?access_token=${accessToken}`)
          .then(response => response.json())
          .then((data) => {
            let position = data.features[0].context[2].text;
            // console.log(`1: ${position}`)
            window.location = `/cities/${position.toLowerCase()}`
          });
      });
    });
  }
}

export { getCurrentPosition };

// currentLocation.addEventListener('click', (event) => {
// });
