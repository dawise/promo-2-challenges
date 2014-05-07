/*
  *
  * TODO: add your code here!
  *
*/

$(document).ready(function() {
  $( "#message" ).hide().slideDown("slow");

  $( "#message" ).click(function() {
    $(this).slideUp("slow");

    $('#message-wrapper').on('mouseenter', function() {
      $('#messsage').slideDown();
    })

on.('mouseleave', function () {
    $message.slideUp;
}
  });

});
