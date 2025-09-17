import 'game.dart';
import 'theming.dart';

void main(){
  print(colorize(r'''
  __        __   _                            _ 
  \ \      / /__| | ___ ___  _ __ ___   ___  | |
   \ \ /\ / / _ \ |/ __/ _ \| '_ ` _ \ / _ \ | |
    \ V  V /  __/ | (_| (_) | | | | | |  __/ |_|
     \_/\_/ \___|_|\___\___/|_| |_| |_|\___| (_)
  ''',yellow+bold));
  
    print(
      colorize("--- Welcome to the Password Guessing Game ---",
      cyan
      )
      );
    print("I've chosen a Password with five digits. Can you guess it?");
    startTheGame();
}