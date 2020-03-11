import Swiper from "swiper"
const initSwiper = () => {
  const swiperContainers = document.querySelectorAll(".swiper-container")
  if (swiperContainers.length > 0) {
    swiperContainers.forEach((swiperEl) => {
      const mySwiper = new Swiper(swiperEl, {
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
