describe('FizzBuzz', function() {

  var fizzBuzz;

  beforeEach(function() {
    fizzBuzz = new FizzBuzz();
  });

  describe('knows when a number is', function() {

    it('divisible by three', function() {
      expect(fizzBuzz._isDivisibleByThree(3)).toBe(true);
    });

    it('divisible by five', function() {
      expect(fizzBuzz._isDivisibleByFive(5)).toBe(true);
    });

    it('divisible by both three and five', function() {
      expect(fizzBuzz._isDivisibleByBothThreeAndFive(15)).toBe(true);
    });

  });

  describe('knows when a number is NOT', function() {

    it('divisible by three', function() {
      expect(fizzBuzz._isDivisibleByThree(1)).toBe(false);
    });

    it('divisible by five', function() {
      expect(fizzBuzz._isDivisibleByFive(1)).toBe(false);
    });

    it('divisible by both three and five', function() {
      expect(fizzBuzz._isDivisibleByBothThreeAndFive(1)).toBe(false);
    });
  });

  describe('during play, says', function() {

    it('"Fizz" when number is divisible by three', function() {
      expect(fizzBuzz.says(3)).toEqual('Fizz');
    });

    it('"Buzz" when number is divisible by five', function() {
      expect(fizzBuzz.says(5)).toEqual('Buzz');
    });

    it('"FizzBuzz" when number is divisible by both three and five', function() {
      expect(fizzBuzz.says(15)).toEqual('FizzBuzz');
    });
  });
});
