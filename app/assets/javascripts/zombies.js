$(document).on('ready turbolinks:load', function () {
  $('#star1').starrr({
    change: function (e, value) {
      var zombie_id = $(this).data('zombie');
      if (value) {
        $.ajax({
          beforeSend: function (xhr) { xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content')) },
          type: "POST",
          url: "/ratings",
          data: { rating: { score: value, zombie_id: zombie_id}},
          dataType: "script",
          success: function (response) {
            $('.your-choice-was').show();
            $('.choice').text(value);    
          }
        });
      } else {
        $('.your-choice-was').hide();
      }
    }
  });  
})
