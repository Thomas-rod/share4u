const directNetwork = () => {
  const buttonDirectlyOn = document.querySelector(".directly-on");
  const networksContainer = document.querySelector(".networks-container")
  const buttonToAcceptChangesDirect = document.getElementById("changes-footer-buttons");
  // const buttonSeeMyProfile = document.getElementById("button-see-my-profile")
  if (buttonDirectlyOn) {
    buttonDirectlyOn.addEventListener('click', (e) => {

      networksContainer.classList.toggle("changes-direct")

      const allNetwork = document.querySelectorAll(".container-button-network");
      const networkNotCreated = document.querySelectorAll(".container-button-socials")
      const allInactiveNetwork = document.querySelectorAll(".container-button-network:not(.direct-network-active)")

      if (networksContainer.classList.contains("changes-direct")) {

        networksContainer.insertAdjacentHTML('beforebegin', "<div id='direct-bg'></div>");

        networkNotCreated.forEach((elem) => {
          elem.style.display="none"
        })

        allInactiveNetwork.forEach((elem) => {
          elem.insertAdjacentHTML("beforeend", '<span class="label-direct-inactive"></span>');
         })

        buttonDirectlyOn.style.zIndex="4"
        buttonDirectlyOn.style.backgroundColor="rgba(30,221,136,0.2)"

        buttonToAcceptChangesDirect.style.display="flex";

        allNetwork.forEach((elem) => {
          elem.style.zIndex="4"
          elem.dataset.target = "#";
          elem.addEventListener('click', (e) => {
            allNetwork.forEach((element) => {
              element.children[2].classList.remove("label-direct-active");
              element.children[2].classList.remove("label-direct-inactive");
              element.children[2].classList.add("label-direct-inactive");
            })
            elem.children[2].classList.remove("label-direct-inactive");
            elem.children[2].classList.add("label-direct-active");
          })
        })
      } else {
        location.reload();
      };
    })
  }
}

export { directNetwork }
