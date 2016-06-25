var Thermostat = function() {
  this.INITIAL_TEMPERATURE  = 20;
  this.MINIMUM_TEMPERATURE  = 10;
  this.MAXIMUM_TEMPERATURE  = 25;
  this.currentTemperature   = 20;
  this.powerSaving          = true;
  this.highPowerTemperature = 25;
  this.lowPowerTemperature  = 17;
  this.displayColour        = 'yellow';
};

Thermostat.prototype.increaseTemperature = function(increaseValue) {
  this._powerSavingErrorHandler();
  this.currentTemperature += increaseValue;
  this._displayColourSetter();
};

Thermostat.prototype.decreaseTemperature = function(decreaseValue) {
  this._minimumTemperatureError();
  this.currentTemperature -= decreaseValue;
  this._displayColourSetter();
};

Thermostat.prototype.togglePowerSaving = function() {
  this.powerSaving = !this.powerSaving;
  this._maximumTemperatureAdjuster();
};

Thermostat.prototype.resetTemperature = function() {
  this._updateCurrentTemperature(this.INITIAL_TEMPERATURE);
  this._displayColourSetter();
};

// private methods

Thermostat.prototype._updateCurrentTemperature = function(tempValue) {
  this.currentTemperature = tempValue;
  this._displayColourSetter();
};

// In my opinion, maximum temperature is a constant dependant on state.
// It therefore needs to be changed depending on state.

Thermostat.prototype._maximumTemperatureAdjuster = function() {
  if(this.powerSaving === true) {
    this.MAXIMUM_TEMPERATURE = 25;
  }
  if(this.powerSaving === false) {
    this.MAXIMUM_TEMPERATURE = 32;
  }
};

Thermostat.prototype._displayColourSetter = function() {
  if(this.currentTemperature >= this.highPowerTemperature) {
    this.displayColour = 'red';
  } else if(this.currentTemperature <= this.lowPowerTemperature) {
    this.displayColour = 'green';
  } else {
    this.displayColour = 'yellow';
  }
};

Thermostat.prototype._minimumTemperatureError = function() {
  if(this.currentTemperature === this.MINIMUM_TEMPERATURE) {
    throw "Minimum temperature reached.";
  }
};

Thermostat.prototype._maximumTemperatureError = function() {
  if(this.currentTemperature === this.MAXIMUM_TEMPERATURE) {
    throw "Maximum temperature reached.";
  }
};

Thermostat.prototype._powerSavingErrorHandler = function() {
  if(this.powerSaving === true) {
    this._maximumTemperatureError();
  }
  if(this.powerSaving === false) {
    this._maximumTemperatureError();
  }
};
