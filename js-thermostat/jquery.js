$(document).ready(function() {

  var thermostat = new Thermostat();

  $('#current-temperature').text(thermostat.currentTemperature);

  $('#power-saving').text(thermostat.powerSaving);

  $('#increase-temperature').on('click', function() {
    thermostat.increaseTemperature(1);
    $('#current-temperature').text(thermostat.currentTemperature);
  });

  $('#decrease-temperature').on('click', function() {
    thermostat.decreaseTemperature(1);
    $('#current-temperature').text(thermostat.currentTemperature);
  });

  $('#reset-temperature').on('click', function() {
    thermostat.resetTemperature();
    $('#current-temperature').text(thermostat.currentTemperature);
  });

  $('#toggle-power-saving').on('click', function() {
    thermostat.togglePowerSaving();
    $('#power-saving').text(thermostat.powerSaving);
  });

  $('#power-saving-status').fadeTo(1, 0.95);

  $('#power-saving-status').mouseenter(function() {
    $('#power-saving-status').fadeTo('fast', 1);
  });

  $('#power-saving-status').mouseleave(function() {
    $('#power-saving-status').fadeTo('fast', 0.95);
  });
});
