$(document).ready(function() {

  $('#power-saving-status').fadeTo(1, 0.8);

  $('#power-saving-status').mouseenter(function() {
    $('#power-saving-status').fadeTo('fast', 1);
  });

  $('#power-saving-status').mouseleave(function() {
    $('#power-saving-status').fadeTo('fast', 0.8);
  });
});
