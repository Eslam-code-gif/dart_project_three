

# Password Guessing Game

A simple and interactive command-line number guessing game built with Dart. The goal is to guess a 5-digit password by completing five rounds of number guessing challenges. With each successful guess, one digit of the final password is revealed.

## 🌟 Features

  - **Interactive CLI Gameplay:** A fun and engaging experience directly in your terminal.
  - **Five Challenging Rounds:** The game consists of 5 rounds, each with a different and unique number range.
  - **Dynamic Feedback System:** Get hints to guide your guesses\! The game tells you if you're getting "warmer" 🔥 or "colder" ❄️ compared to your previous attempt.
  - **Colorful Terminal Interface:** A visually appealing interface with styled and colored text to enhance the user experience.
  - **Final Password Reveal:** After successfully completing all rounds, the full 5-digit password is revealed.

## 🕹️ How to Play

1.  Run the application from your terminal.
2.  You will be presented with 5 rounds of guessing challenges.
3.  In each round, a secret number is generated within a given range (hint).
4.  Enter your guess when prompted.
5.  Use the "warmer" and "colder" feedback to adjust your next guess.
6.  Once you guess the number correctly, you will move to the next round.
7.  Complete all five rounds to discover the final password\!

## 🚀 Getting Started

### Prerequisites

Make sure you have the [Dart SDK](https://dart.dev/get-dart) installed on your system.

### Running the Application

1.  Clone this repository or download the source code files.

2.  Open your terminal and navigate to the project directory.

3.  Run the application with the following command:

    ```sh
    dart run main.dart
    ```

## 📂 Project Structure

```
.
├── main.dart       # The entry point of the application.
├── game.dart       # Contains the core game logic and round management.
├── theming.dart    # Handles styling, colors, and animations for the console output.
└── LICENSE         # The project's license file.
```

## Example of gameplay 🎮


```
  __        __   _                            _
  \ \      / /__| | ___ ___  _ __ ___   ___  | |
   \ \ /\ / / _ \ |/ __/ _ \| '_ ` _ \ / _ \ | |
    \ V  V /  __/ | (_| (_) | | | | | |  __/ |_|
     \_/\_/ \___|_|\___\___/|_| |_| |_|\___| (_)

--- Welcome to the Password Guessing Game ---
I've chosen a Password with five digits. Can you guess it?

--- Let's Guess The Number #1 ---
Generating number......
Hint 😉: The number is between 10 and 100

Enter your guess: 50
Wrong guess, but you're getting warmer! 🔥>>

Enter your guess: 75
Wrong guess, and you're getting colder... ❄️<<

Enter your guess: 62
✅  Correct! The number was 62.
It took you 3 attempt(s).

... (The game continues) ...

==================================================

                                 _         _       _   _
  ___ ___  _ __   __ _ _ __ __ _| |_ _   _| | __ _| |_(_) ___  _ __  ___
 / __/ _ \| '_ \ / _` | '__/ _` | __| | | | |/ _` | __| |/ _ \| '_ \/ __|
| (_| (_) | | | | (_| | | | (_| | |_| |_| | | (_| | |_| | (_) | | | \__ \
 \___\___/|_| |_|\__, |_|  \__,_|\__|\__,_|_|\__,_|\__|_|\___/|_| |_|___/
                 |___/

🎉🎉🎉 You found the full password! 🎉🎉🎉
The password is: [62, 45, 130, 99, 78]
==================================================
```


## 📜 License

This project is licensed under the MIT License. [cite\_start]See the [LICENSE](https://www.google.com/search?q=LICENSE) file for details. [cite: 1]

[cite\_start]Copyright (c) 2025 Abdelrahim mohamed abdelrahim ibrahim (Eslam-code-gif) [cite: 1]
