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
    // SECOND STEP IS TO ADD SPAN INACTIVE TO ALL NETWORKS WHICH ARE NOT ACTIVE
    // THIRD STEP DISPLAY FIX BANNER TO VALIDATE OR REFUSE CHANGES

    if (networksContainer.classList.contains("changes-direct")) {
      // THIS SECTION IS WHEN YOU ARE ACTUALLY CHANGING YOUR DIRECT

      // FIRST STEP IS TO DISPLAY NONE ALL SOCIALS (WHICH ARE NOT CREATED YET)
      networkNotCreated.forEach((elem) => {
        elem.style.display="none"
      })

      // SECOND STEP IS TO ADD SPAN INACTIVE TO ALL NETWORKS WHICH ARE NOT ACTIVE
      allInactiveNetwork.forEach((elem) => {
        elem.insertAdjacentHTML("beforeend", '<span class="label-direct-inactive"></span>');
       })

      // THIRD STEP DISPLAY FIX BANNER TO VALIDATE OR REFUSE CHANGES
      buttonToAcceptChangesDirect.style.display="flex";
      // FOURTH STEP IS TO DISABLE THE POPUP WHEN CLICK ON NETWORKS AND TO LISTEN CLICK
      allNetwork.forEach((elem) => {
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
      // THIS SECTION IS TO RECONFIGURE ALL CLASS AND REFRESH
      networkNotCreated.forEach((elem) => {
        elem.style.display="block"
      })
      buttonToAcceptChangesDirect.style.display="none";
      const allSpanInactive = document.querySelectorAll(".label-direct-inactive")
      allSpanInactive.forEach((elem) => {
        elem.remove();
      })
    };
  })
}

export { directNetwork }
