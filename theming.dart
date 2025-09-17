  import 'dart:io';

  const  red = '\x1B[31m';
  const  green = '\x1B[32m';
  const  yellow = '\x1B[33m';
  const  blue = '\x1B[34m';
  const  magenta = '\x1B[35m';
  const  cyan = '\x1B[36m';
  const  white = '\x1B[37m';
  const  reset = '\x1B[0m';
  const bold ='\x1B[1m';


  String colorize(String text, String color) {
  return '$color$text${reset}';
}
void showThinkingAnimation() {
  stdout.write(colorize("Generating number", cyan));
  for (int i = 0; i < 6; i++) {
    sleep(const Duration(milliseconds: 550)); 
    stdout.write(colorize(".", cyan));
  }
  sleep(const Duration(milliseconds: 500)); 
  stdout.write('\r' + ' ' * 20 + '\r'); 
}