const redirectToSocialWhenDirectNetwork = () => {
  if (document.getElementById("direct-network-magnet-profile")) {
    const nameSocial = document.querySelector(".name-social").innerHTML
    const usernameNetwork = document.querySelector(".username-network").innerHTML
    const kindSocial = document.querySelector(".kind-social").innerHTML
    const startUrlSocial = document.querySelector(".url-begin-social").innerHTML
    const vcardSocial = document.querySelector(".vcard-social").innerHTML
    function checkHTTPS(url) {
      if(url.includes("http")){
        return url
      } else {
        return `https://${url}`
      }
    }
    if (nameSocial === "email") {
      console.log("email")
      window.location.href=`mailto:${usernameNetwork}`
      window.location.href="https://www.joombo.io"
    } else if (nameSocial === "text") {
      console.log("text")
      window.location.href=`tel:${usernameNetwork}`
      window.location.href="https://www.joombo.io"
    } else if (nameSocial === "contact") {
      window.location.href=`https://www.joombo.co/magnet_profiles/${vcardSocial}/export`
    } else {
      const urlUsernameToOpen = checkHTTPS(`${startUrlSocial}${usernameNetwork}`)
      window.location.href=`${urlUsernameToOpen}`
    }
  }
}

export { redirectToSocialWhenDirectNetwork }
