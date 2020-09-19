const sendDataToNetworksController = () => {

  $(document).ready(function(){
    var $buttonDelete = $("#button-delete-direct")
    var $buttonUpdate = $("#button-update-direct")

    $buttonDelete.click(function(event) {
      event.preventDefault();
      var $networkSelected = $(".label-direct-active").parent().data("id");
      $.ajax({
        url: "/networks/delete",
        type: "GET",
        data : { network_id: JSON.stringify($networkSelected) },
        dataType: "json",
        success: function(data) {
          location.reload(true)
        },
      })
    })

    $buttonUpdate.click(function(event) {
      event.preventDefault();
      var $networkSelected = $(".label-direct-active").parent().data("id");
      $.ajax({
        url: "/networks/update",
        type: "GET",
        data : { network_id: JSON.stringify($networkSelected) },
        dataType: "json",
        success: function(data) {
          location.reload(true)
        },
      })
    })

  });
};

export { sendDataToNetworksController }
