const closeIconModal = () => {
  if (document.querySelectorAll('.icon-close')) {
    const closeIconAll = document.querySelectorAll('.icon-close')

    closeIconAll.forEach((close_icon) => {
      close_icon.addEventListener('click', () => {
        console.log(close_icon.parentElement.parentElement.parentElement);
        close_icon.parentElement.parentElement.parentElement.style.display="none";
      })
    })
  }
}
export { closeIconModal }

