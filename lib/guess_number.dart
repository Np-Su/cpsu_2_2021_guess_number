// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';

import 'game.dart';
void main() {
  var game = Game();
  game.playGame();
  while(true){
    stdout.write('Play again? (Y/N):');
    var inputFinish = stdin.readLineSync();
    if(inputFinish == 'Y' || inputFinish == 'y'){
      game.playGame();
    }else if(inputFinish == 'N' || inputFinish == 'n'){
      break;
    }
  }
}

