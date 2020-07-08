const closeCouponIcon = () => {
  if (document.querySelector('.close-icon-coupon')) {

    const modalCoupon = document.getElementById('banner-coupon')
    const closeIcon = document.querySelector('.close-icon-coupon')

    closeIcon.addEventListener('click', () => {
      modalCoupon.style.visibility= "hidden";
    })
  }
}

export { closeCouponIcon }
