const landbotLoad = () => {
  if (document.getElementById('myLandbot')) {
    var myLandbot = new Landbot.Container({
      container: '#myLandbot',
      configUrl: 'https://chats.landbot.io/v3/H-628358-KH0QMRF7WXRG8XFK/index.json',
    });
  }
}

export { landbotLoad }
