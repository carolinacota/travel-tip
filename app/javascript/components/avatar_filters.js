import Rails from 'rails-ujs';

const userAvatar = document.getElementById('avatar-upload');
const avatarFilters = document.querySelectorAll('.avatar-filter');

const imageSource = (filter, key) => {
  return `http://res.cloudinary.com/dwl902xa4/image/upload${filter}/c_scale,w_300/c_fill,h_300,w_300/${key}`
}

const applyFilter = (avatarFilter) => {
  const filter = avatarFilter.dataset.filter;
  const key = avatarFilter.dataset.avatarKey;

  fetch('/avatar', {
          method: 'PATCH',
          body: JSON.stringify({
            filter: filter
          }),
          headers: {
            'Content-Type': 'application/json',
            'X-CSRF-Token': Rails.csrfToken()
          },
          credentials: 'same-origin'
        }).then(() => userAvatar.src = imageSource(filter, key))
}

const initAvatarFilters = () => {
  if (userAvatar && avatarFilters.length > 0) {
    avatarFilters.forEach(avatarFilter => {
      avatarFilter.addEventListener('click', () => applyFilter(avatarFilter))
    });
  }
}

export { initAvatarFilters };
