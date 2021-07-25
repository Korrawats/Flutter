import 'dart:io';
import 'dart:math';


void main(){

  //int? MAX_RANDOM;

  print('╔═══════════════════════════════════════════════════════════');
  print('║               GUESS THE NUMBER                            ');
  print('╟───────────────────────────────────────────────────────────');
  stdout.write("║ Enter max number you want to guess: ");
  String? user_input = stdin.readLineSync();
  print('╟───────────────────────────────────────────────────────────');
  int? maxRandom = int.tryParse(user_input!);

  if(maxRandom == null){
    return;
  }

  Game game = Game(maxRandom : maxRandom);

  while(true) {
    stdout.write("║ Guess the number between 1 and $maxRandom: ");
    String? input = stdin.readLineSync();
    var guess, isCorrect = false;
    guess = int.tryParse(input!);

    if (guess != null) {
      Map result = game.doGuess(guess);
      isCorrect = result['isCorrect'];
      var texts = result['text'];
      print('║ ➜ $guess :' + texts);
      print('╟───────────────────────────────────────────────────────────');
      game.getTotalGyesses(isCorrect);
      if(isCorrect == true ){
        break;
      }
    } else {
      continue;
    }
  }



}

class Game{
  //late
  late int answer;
  late int maxRandom;
  int count = 0;

  Game({required this.maxRandom}) {
    var r = Random();
    this.answer = r.nextInt(maxRandom) + 1;
    print(answer);
  }

  void getTotalGyesses(bool isCorrect){
    this.count+=1;
    if(isCorrect == true){
      print('╟ Total guesses : $count');
      print('╟───────────────────────────────────────────────────────────');
      print('║               THE END                                     ');
      print('╟───────────────────────────────────────────────────────────');
    }
  }

  static const List feedbackList = [
    {
      'text' : ' TOO HIGH! ▲',
      'isCorrect' : false,
    },

    {
      'text' : ' TOO LOW! ▲',
      'isCorrect' : false,
    },

    {
      'text' : ' CORRECT ❤',
      'isCorrect' : true,
    },

  ];



  Map doGuess(int number){
    if(number > this.answer){
      return feedbackList[0];
    } else if(number < this.answer)  {
      return feedbackList[1];
    } else {
      return feedbackList[2];
    }
  }

}

void _main() {
  const MAX_RANDOM = 100;

  print('╔═══════════════════════════════════════════════');
  print('║               GUESS THE NUMBER                ');
  print('╟───────────────────────────────────────────────');

  var r = Random();
  var answer = r.nextInt(MAX_RANDOM) + 1;

  var guess, isCorrect = false, totalGuesses = 0;
  do {
    stdout.write('║ Guess the number between 1 and $MAX_RANDOM: ');
    String? input = stdin.readLineSync();

    guess = int.tryParse(input!);
    if (guess != null) {
      totalGuesses++;
      if (answer == guess) {
        print('║ ➜ $guess is CORRECT ❤, total guesses: $totalGuesses');
        isCorrect = true;
      } else if (answer < guess) {
        print('║ ➜ $guess is TOO HIGH! ▲');
      } else {
        print('║ ➜ $guess is TOO LOW! ▼');
      }
      print('╟───────────────────────────────────────────────');
    }
  } while (!isCorrect);

  print('║                   THE END                     ');
  print('╚═══════════════════════════════════════════════');
}

