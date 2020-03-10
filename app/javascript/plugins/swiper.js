import Swiper from "swiper"

const initSwiper = () => {
  const swiperContainers = document.querySelectorAll(".swiper-container")
  if (swiperContainers.length > 0) {
    swiperContainers.forEach((swiperEl, i) => {
      swiperEl.classList.add(`s${i}`)
      const mySwiper = new Swiper(`.s${i}`, {
        // Optional parameters
        direction: 'vertical',
        loop: true,
        autoplay: {
          delay: 10000,
        }
      })

    })
  }
}


export {
  initSwiper
}
