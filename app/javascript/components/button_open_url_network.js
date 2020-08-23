const modalOpenNetwork = () => {
  if (document.getElementById('show-profil')) {
    const inputToListen = document.querySelectorAll(".js-listen-input");

    function keyUpOrCopyPast(input, timer) {
      if (timer) {
          window.clearTimeout(timer);
      }
      timer = window.setTimeout( function() {
          timer = null;
          const buttonToChange = input.parentNode.parentNode.parentNode.querySelector(".modal-footer > a.button-to-open");
          const urlToRedirect = buttonToChange.dataset.url;
          buttonToChange.href=`${urlToRedirect + input.value}`
          console.log(buttonToChange)
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
