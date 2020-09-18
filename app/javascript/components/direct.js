const directNetwork = () => {
  const buttonDirectlyOn = document.querySelector(".directly-on");
  const networksContainer = document.querySelector(".networks-container")
  const buttonToAcceptChangesDirect = document.getElementById("changes-footer-buttons");

  buttonDirectlyOn.addEventListener('click', (e) => {
    // STATE TO KNOW IF WE DO HAVE TO APPLY STYLES OR NOT
    networksContainer.classList.toggle("changes-direct")

    // VARIABLES WE WILL USE WHEN THERE IS A CLICK
    const allNetwork = document.querySelectorAll(".container-button-network");
    const networkNotCreated = document.querySelectorAll(".container-button-socials")
    const allInactiveNetwork = document.querySelectorAll(".container-button-network:not(.direct-network-active)")



    // FIRST STEP IS TO DISPLAY NONE ALL SOCIALS (WHICH ARE NOT CREATED YET)
    if (networksContainer.classList.contains("changes-direct")) {
      networkNotCreated.forEach((elem) => {
        elem.style.display="none"
        buttonToAcceptChangesDirect.style.display="flex";
        // allInactiveNetwork.forEach((elem) => {
        //   elem.insertAdjacentHTML("beforeend", '<span class="label-direct-inactive"></span>');
        // })
      })
    } else {
      networkNotCreated.forEach((elem) => {
        elem.style.display="block"
      })
      buttonToAcceptChangesDirect.style.display="none";
      const allSpanInactive = document.querySelectorAll(".label-direct-inactive")
      allSpanInactive.forEach((elem) => {
        elem.remove();
      })
    };

    // SECOND STEP IS TO ADD CLASS INACTIVE TO ALL NETWORKS WHICH ARE NOT ACTIVE
    allInactiveNetwork.forEach((elem) => {
      elem.insertAdjacentHTML("beforeend", '<span class="label-direct-inactive"></span>');
    })

    // THIRD STEP DISPLAY FIX BANNER TO VALIDATE OR REFUSE CHANGES
  })
}

export { directNetwork }
