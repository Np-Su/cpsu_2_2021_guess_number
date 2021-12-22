// ignore_for_file: avoid_print
import 'dart:math';
import 'dart:io';
class Game{
  static const maxRandom = 100;
  int? _answer;
  int? _count = 0;

  Game(){
    var r = Random();
    _answer = r.nextInt(maxRandom)+1; //_answer = private package
  }

  int doGuess(int num){
    _count = (_count!+1);
    if(num> _answer!){
      return 1;
    }else if(num< _answer!){
      return -1;
    }else{
      return 0;
    }
  }
  int? getCount(){
    return _count;
  }
  void playGame(){
    const maxRandom = 100;

    var game = Game();
    var isCorrect = false;

    print('╔════════════════════════════════════════');
    print('║            GUESS THE NUMBER            ');
    print('╟────────────────────────────────────────');

    do {
      stdout.write('║ Guess the number between 1 and $maxRandom: ');
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null) {
        continue;
      }

      var result = game.doGuess(guess);
      var round = game.getCount();
      if (result == 1) {
        print('║ ➜ $guess is TOO HIGH! ▲');
        print('╟──────────────────────────────────────── $round');
      } else if (result == -1) {
        print('║ ➜ $guess is TOO LOW! ▼');
        print('╟──────────────────────────────────────── $round');
      } else {
        print('║ ➜ $guess is CORRECT ❤, total guesses: $round');
        print('╟────────────────────────────────────────');
        isCorrect = true;
      }
    } while (!isCorrect);

    print('║                 THE END                ');
    print('╚════════════════════════════════════════');
  }
}
