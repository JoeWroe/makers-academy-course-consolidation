describe('FizzBuzz', function() {

  var fizzBuzz;

  beforeEach(function() {
    fizzBuzz = new FizzBuzz();
  });

  describe('knows when a number is', function() {

    it('divisible by three', function() {
      expect(fizzBuzz.isDivisibleByThree(3)).toBe(true);
    });

    it('divisible by five', function() {
      expect(fizzBuzz.isDivisibleByFive(5)).toBe(true);
    });

    it('divisible by both three and five', function() {
      expect(fizzBuzz.isDivisibleByBothThreeAndFive(15)).toBe(true);
    });

  });

  describe('knows when a number is NOT', function() {

    it('divisible by three', function() {
      expect(fizzBuzz.isDivisibleByThree(1)).toBe(false);
    });

    it('divisible by five', function() {
      expect(fizzBuzz.isDivisibleByFive(1)).toBe(false);
    });

    it('divisible by both three and five', function() {
      expect(fizzBuzz.isDivisibleByBothThreeAndFive(1)).toBe(false);
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


// describe("Player", function() {
//   var player;
//   var song;
//
//   beforeEach(function() {
//     player = new Player();
//     song = new Song();
//   });
//
//   it("should be able to play a Song", function() {
//     player.play(song);
//     expect(player.currentlyPlayingSong).toEqual(song);
//
//     //demonstrates use of custom matcher
//     expect(player).toBePlaying(song);
//   });
//
//   describe("when song has been paused", function() {
//     beforeEach(function() {
//       player.play(song);
//       player.pause();
//     });
//
//     it("should indicate that the song is currently paused", function() {
//       expect(player.isPlaying).toBeFalsy();
//
//       // demonstrates use of 'not' with a custom matcher
//       expect(player).not.toBePlaying(song);
//     });
//
//     it("should be possible to resume", function() {
//       player.resume();
//       expect(player.isPlaying).toBeTruthy();
//       expect(player.currentlyPlayingSong).toEqual(song);
//     });
//   });
//
//   // demonstrates use of spies to intercept and test method calls
//   it("tells the current song if the user has made it a favorite", function() {
//     spyOn(song, 'persistFavoriteStatus');
//
//     player.play(song);
//     player.makeFavorite();
//
//     expect(song.persistFavoriteStatus).toHaveBeenCalledWith(true);
//   });
//
//   //demonstrates use of expected exceptions
//   describe("#resume", function() {
//     it("should throw an exception if song is already playing", function() {
//       player.play(song);
//
//       expect(function() {
//         player.resume();
//       }).toThrowError("song is already playing");
//     });
//   });
// });
