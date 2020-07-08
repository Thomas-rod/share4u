// NOT WORKING


const checkUrlValid = () => {
  if (document.querySelector(".modal.show")) {
    console.log(document.querySelector(".modal.show"))
    var MrChecker = new XMLHttpRequest(),
    CheckThisUrl = "//www.gahhaoogle.com/+ShahDanial";
    // Opens the file and specifies the method (get)
    // Asynchronous is true
    MrChecker.open('get', CheckThisUrl, true);
    //check each time the ready state changes
    //to see if the object is ready
    MrChecker.onreadystatechange = checkReadyState;
    function checkReadyState() {
      if (MrChecker.readyState === 4) {
        //check to see whether request for the file failed or succeeded
        if ((MrChecker.status == 200) || (MrChecker.status == 0)) {
          alert(CheckThisUrl + ' page is exixts');
        }
        else {
          alert(CheckThisUrl + ' not exists');
          return;
        }
      }
    }
      MrChecker.send(null);
  }
}

export { checkUrlValid }
