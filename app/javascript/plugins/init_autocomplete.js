import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.querySelector('.address-input') ||
                       document.getElementById("toilet_address");
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
