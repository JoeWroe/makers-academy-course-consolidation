var Thermostat = function() {};

var currentTemperature;

Thermostat.prototype.initializeThermostat = function() {
  this._updateCurrentTemperature(20);
  return currentTemperature;
};

Thermostat.prototype.increaseTemperature = function(increaseValue) {
  currentTemperature += increaseValue;
};

Thermostat.prototype.decreaseTemperature = function(decreaseValue) {
  currentTemperature -= decreaseValue;
};

// private methods

Thermostat.prototype._updateCurrentTemperature = function(tempValue) {
  currentTemperature = tempValue;
};
