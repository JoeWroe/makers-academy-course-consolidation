describe('Thermostat', function() {

  var thermostat;

  beforeEach(function() {
    thermostat = new Thermostat();
    thermostat.initializeThermostat();
  });

  describe('when initialized', function() {

    it('sets the temperature to 20 degrees', function() {
      expect(currentTemperature).toEqual(20);
    });
  });

  describe('changing the temperature', function() {

    it('can be increased', function() {
      thermostat.increaseTemperature(1);
      expect(currentTemperature).toEqual(21);
    });

    it('can be decreased', function() {
      thermostat.decreaseTemperature(1);
      expect(currentTemperature).toEqual(19);
    });
  });
});
