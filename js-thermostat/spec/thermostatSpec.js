describe('Thermostat', function() {

  var thermostat;

  beforeEach(function() {
    thermostat = new Thermostat();
  });

  describe('when initialized, it', function() {

    it('sets the temperature to 20 degrees', function() {
      expect(thermostat.currentTemperature).toEqual(20);
    });
  });
});
