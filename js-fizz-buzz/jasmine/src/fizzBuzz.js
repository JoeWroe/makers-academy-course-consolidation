var FizzBuzz = function() {};

FizzBuzz.prototype.says = function(number) {
  if (this._isDivisibleByBothThreeAndFive(number)) {
    return "FizzBuzz";
  }
  if (this._isDivisibleByThree(number)) {
    return "Fizz";
  }
  if (this._isDivisibleByFive(number)) {
    return "Buzz";
  }
  return number;
};

// private

FizzBuzz.prototype._isDivisibleBy = function(number, divisor) {
  return(number % divisor === 0);
};

FizzBuzz.prototype._isDivisibleByThree = function(number) {
  return this._isDivisibleBy(number, 3);
};

FizzBuzz.prototype._isDivisibleByFive = function(number) {
  return this._isDivisibleBy(number, 5);
};

FizzBuzz.prototype._isDivisibleByBothThreeAndFive = function(number) {
  return this._isDivisibleBy(number, 15);
};
