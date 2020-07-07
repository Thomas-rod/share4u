const modalSocials = () => {
  if (document.querySelectorAll(".modal-socials--bg")) {
    const allSocialModals = document.querySelectorAll(".modal-socials--bg")
    const allSocialIcons = document.querySelectorAll('.avatar-social')

    allSocialIcons.forEach((icon) => {
      icon.addEventListener('click', () => {
        console.log(icon)
        const modalToOpen = document.querySelector(`[data-attribute~='#${icon.id}']`)
        console.log(modalToOpen)
        modalToOpen.style.display="block";
      })
    })
  }
}

export { modalSocials }
