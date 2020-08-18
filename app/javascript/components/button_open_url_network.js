const modalOpenNetwork = () => {
  if (document.getElementById('show-profil')) {
    const inputToListen = document.querySelectorAll(".js-listen-input");

    inputToListen.forEach((input) => {
      console.log(input);
      var timer = null;
      input.addEventListener('keyup', (e) => {
        if (timer) {
            window.clearTimeout(timer);
        }
        timer = window.setTimeout( function() {
            timer = null;
            const buttonToChange = input.parentNode.parentNode.parentNode.querySelector(".modal-footer > a.button-to-open");
            buttonToChange.href=`${input.value}`
        }, 100 );
      })
    })

  }
};

export { modalOpenNetwork }
