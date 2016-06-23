var FizzBuzz = function() {};

FizzBuzz.prototype.isDivisibleByThree = function(number) {
  return this._isDivisibleBy(number, 3);
};

FizzBuzz.prototype.isDivisibleByFive = function(number) {
  return this._isDivisibleBy(number, 5);
};

FizzBuzz.prototype.isDivisibleByBothThreeAndFive = function(number) {
  return this._isDivisibleBy(number, 15);
};

FizzBuzz.prototype.says = function(number) {
  if (this.isDivisibleByBothThreeAndFive(number)) {
    return "FizzBuzz";
  }
  if (this.isDivisibleByThree(number)) {
    return "Fizz";
  }
  if (this.isDivisibleByFive(number)) {
    return "Buzz";
  }
  return number;
};

FizzBuzz.prototype._isDivisibleBy = function(number, divisor) {
  return(number % divisor === 0);
};

// function Player() {
// }
// Player.prototype.play = function(song) {
//   this.currentlyPlayingSong = song;
//   this.isPlaying = true;
// };
//
// Player.prototype.pause = function() {
//   this.isPlaying = false;
// };
//
// Player.prototype.resume = function() {
//   if (this.isPlaying) {
//     throw new Error("song is already playing");
//   }
//
//   this.isPlaying = true;
// };
//
// Player.prototype.makeFavorite = function() {
//   this.currentlyPlayingSong.persistFavoriteStatus(true);
// };
