import 'dart:io';
import 'dart:math';
import 'theming.dart';

void guessTheNumber ({required int randomNumber}){
  //randomNumber=90;
  int attempts = 0;
  int? previousGuess; 
  while(true){
    stdout.write(colorize("\nEnter your guess: ", white+bold));
    String? input = stdin.readLineSync();
    if(input == null || int.tryParse(input)==null){
      print(colorize("Error: Please enter a valid integer.", red));
      continue;
    }
    int currentGuess =int.parse(input);
    attempts++;
    if(currentGuess==randomNumber){
      print(colorize("\n ✅  Correct! The number was $randomNumber.", green+bold));
      print("It took you $attempts attempt(s).");
      break;
    }else  if (previousGuess == null){
      print(colorize("Wrong guess, try again.", yellow));
    }else{
      int previousDiff=(previousGuess-randomNumber).abs();
      int currentDiff=(currentGuess-randomNumber).abs();
      if (currentDiff < previousDiff) {
          print(colorize("Wrong guess, but you're getting warmer! 🔥>>", green));
        } else if (currentDiff > previousDiff) {
          print(colorize("Wrong guess, and you're getting colder... ❄️<<", blue));
        } else {
          print(colorize("Wrong guess, you're the same distance away.", yellow));
        }
    }
    previousGuess=currentGuess;
  }
}


int getRandomNumber({required int start,required int end}){
  final x =Random().nextInt(end-start+1)+start;
  return x;
}


void startTheGame() {
  List<int> password = [];

  const ranges = [
    [10, 100], // Round 1
    [20, 80],  // Round 2
    [50, 200], // Round 3
    [60, 150], // Round 4
    [40, 90]   // Round 5
  ];
  for (int i = 0; i < ranges.length; i++) {
    int roundNumber = i + 1;
    int start = ranges[i][0];
    int end = ranges[i][1];

    print(colorize("\n--- Let's Guess The Number #$roundNumber ---", yellow+bold));
    showThinkingAnimation();
    print(colorize("Hint 😉: The number is between $start and $end", cyan));
    
    final numberToGuess = getRandomNumber(start: start, end: end);
    guessTheNumber(randomNumber: numberToGuess);
    
    password.add(numberToGuess);
  }
  print("\n" + "=" * 50);
  print(
    colorize(r"""
                                 _         _       _   _                 
  ___ ___  _ __   __ _ _ __ __ _| |_ _   _| | __ _| |_(_) ___  _ __  ___ 
 / __/ _ \| '_ \ / _` | '__/ _` | __| | | | |/ _` | __| |/ _ \| '_ \/ __|
| (_| (_) | | | | (_| | | | (_| | |_| |_| | | (_| | |_| | (_) | | | \__ \
 \___\___/|_| |_|\__, |_|  \__,_|\__|\__,_|_|\__,_|\__|_|\___/|_| |_|___/
                 |___/                                                   
  """, magenta + bold)
  );
  print(colorize("🎉🎉🎉 You found the full password! 🎉🎉🎉", green + bold));
  print(colorize("The password is: $password", magenta + bold));
  print("=" * 50);
}