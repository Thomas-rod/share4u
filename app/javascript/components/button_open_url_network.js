const modalOpenNetwork = () => {
  if (document.getElementById('show-profil')) {
    const inputToListen = document.querySelectorAll(".js-listen-input");

    function checkHTTP(userInput, social) {
      if ((social === "linkedin" || social === "facebook" || social === "webiste" || social === "lien") && !(userInput.includes("http://") || userInput.includes("https://"))) {
        return "http://"
      } else {
        return ""
      }
    }

    function keyUpOrCopyPast(input, timer) {
      if (timer) {
          window.clearTimeout(timer);
      }
      timer = window.setTimeout( function() {
          timer = null;
          const buttonToChange = input.parentNode.parentNode.parentNode.querySelector(".modal-footer > a.button-to-open");
          const buttonSocial = buttonToChange.dataset.social
          const urlToRedirect = buttonToChange.dataset.url;

          buttonToChange.href=`${checkHTTP(input.value, buttonSocial) + urlToRedirect + input.value}`
      }, 50 );
    }

    inputToListen.forEach((input) => {
      var timer = null;
      input.addEventListener('keyup', (e) => {
        keyUpOrCopyPast(input, timer)
      })
      input.addEventListener('copy', (e) => {
        keyUpOrCopyPast(input, timer)
      })
    })

  }
};

export { modalOpenNetwork }
