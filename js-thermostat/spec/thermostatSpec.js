(function() {
  'use strict';
}());

describe('Thermostat', function() {

  var thermostat;

  beforeEach(function() {
    thermostat = new Thermostat();
  });

  describe('when initialized', function() {

    it('sets the temperature to 20 degrees', function() {
      expect(thermostat.currentTemperature).toEqual(20);
    });

    it('has power saving enabled', function() {
      expect(thermostat.powerSaving).toEqual(true);
    });
  });

  describe('power saving mode', function() {

    it('can be toggled between true and false', function() {
      thermostat.togglePowerSaving();
      expect(thermostat.powerSaving).toEqual(false);
      thermostat.togglePowerSaving();
      expect(thermostat.powerSaving).toEqual(true);
    });

    it('has a maximum temperature of 25 degrees when power saving is on', function() {
      expect(thermostat.MAXIMUM_TEMPERATURE).toEqual(25);
    });

    it('has a maximum temperature of 32 degrees when power saving is off', function() {
      thermostat.togglePowerSaving();
      expect(thermostat.MAXIMUM_TEMPERATURE).toEqual(32);
    });
  });

  describe('changing the temperature', function() {

    it('can be increased', function() {
      thermostat.increaseTemperature(1);
      expect(thermostat.currentTemperature).toEqual(21);
    });

    it('can be decreased', function() {
      thermostat.decreaseTemperature(1);
      expect(thermostat.currentTemperature).toEqual(19);
    });

    it('can be reset', function() {
      thermostat._updateCurrentTemperature(25);
      thermostat.resetTemperature();
      expect(thermostat.currentTemperature).toEqual(20);
    });

    describe('minimum temperature', function() {

      beforeEach(function() {
        // input as a loop for learning, decreaseTemperature(10) would be more elegant
        for(var i = 0; i < 10; i++) {
          thermostat.decreaseTemperature(1);
        }
      });

      it('error is raised if thermostat tries to go below 10 degrees', function() {
        expect(function() { thermostat.decreaseTemperature(1); }).toThrow("Minimum temperature reached.");
      });
    });

    describe('maximum temperature when powerSaving is on', function() {

      beforeEach(function() {
        // input as a loop for learning, increaseTemperature(5) would be more elegant
        for(var i = 0; i < 5; i++) {
          thermostat.increaseTemperature(1);
        }
      });

      it('error is raised if thermostat tries to go above 25 degrees', function() {
        expect(function() { thermostat.increaseTemperature(1); }).toThrow("Maximum temperature reached.");
      });
    });

    describe('maximum temperature when powerSaving is off', function() {

      beforeEach(function() {
        thermostat.togglePowerSaving();
        // input as a loop for learning, increaseTemperature(5) would be more elegant
        for(var i = 0; i < 12; i++) {
          thermostat.increaseTemperature(1);
        }
      });

      it('error is raised if thermostat tries to go above 32 degrees', function() {
        expect(function() { thermostat.increaseTemperature(1); }).toThrow("Maximum temperature reached.");
      });
    });
  });

  describe('display colour', function() {

    describe('when power usage is high', function() {

      beforeEach(function() {
        thermostat.togglePowerSaving();
        for(var i = 0; i < 6; i++) {
          thermostat.increaseTemperature(1);
        }
      });

      it('is red', function() {
        expect(thermostat.displayColour).toBe('red');
      });
    });

    describe('when power usage is medium', function() {

      beforeEach(function() {
        thermostat._updateCurrentTemperature(17);
        thermostat.increaseTemperature(1);
      });

      it('is yellow', function() {
        expect(thermostat.displayColour).toBe('yellow');
      });
    });

    describe('when power usage is low', function() {

      beforeEach(function() {
        for(var i = 0; i < 3; i++) {
          thermostat.decreaseTemperature(1);
        }
      });

      it('is green', function() {
        expect(thermostat.displayColour).toBe('green');
      });
    });
  });
});
