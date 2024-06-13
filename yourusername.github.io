<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Escape Room</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            color: #fff;
            text-align: center;
            background-image: url('abandoned-room.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        h1 {
            margin-top: 50px;
        }
        #puzzle {
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(68, 68, 68, 0.8);
            border-radius: 10px;
            max-width: 500px;
        }
        #input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            margin-bottom: 10px;
        }
        #submit {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #666;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        #message {
            margin-top: 20px;
            font-weight: bold;
        }
        #endScreen {
            display: none;
            background-color: rgba(68, 68, 68, 0.8);
            border-radius: 10px;
            padding: 20px;
            margin-top: 50px;
        }
        #endScreen p {
            color: red;
            font-size: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Escape Room</h1>
    <div id="puzzle">
        <p id="story">You wake up in a dark, abandoned room with no recollection of how you got there.</p>
        <p id="level1">Level 1: Decode the binary code: 01000101 01101110 01100111 01101100 01101001 01110011 01101000</p>
        <input type="text" id="input" placeholder="Enter your answer">
        <button id="submit">Submit</button>
        <p id="message"></p>
    </div>
    <div id="endScreen">
          <h2>Congratulations!</h2>
          <p>Hello and good job.</p>
    </div>

    <script>
        let currentLevel = 1;
        const levels = {
            1: {
                puzzle: "Decode the binary code: 01000101 01101110 01100111 01101100 01101001 01110011 01101000",
                answer: "english",
                story: "As you look around, you remember a man hitting you from behind and putting you in his truck. You also notice a strange symbol carved into the wall.",
                clue: "The next puzzle involves numbers, be prepared to do some math."
            },
            2: {
                puzzle: "Crack the code: 84 72 69 32 83 85 78 32 87 73 76 76 32 82 73 83 69 32 84 79 77 79 82 82 79 87",
                answer: "the sun will rise tomorrow",
                story: "You recall the man saying something about being kidnapped by a group of cybercriminals for a ransom. You also notice a map on the floor with a red 'X' marked on it.",
                clue: "The next puzzle will require you to decipher a message using a cipher."
            },
            3: {
                puzzle: "Decipher the message: 13 9 3 11 15 3 5 14 19 15 21 18 19 5 3 13 5",
                answer: "freedom is yours",
                story: "The memories start to become clearer. The man mentioned that the only way to escape is by cracking a series of codes. You also notice a key hidden under a loose floorboard.",
                clue: "The next puzzle involves a famous person, think carefully."
            },
            4: {
                puzzle: "Your final challenge: crack this code: I am the goat but broke my back, when asked how, I said spinal. Who am I?",
                answer: "mike tyson",
                story: "You remember the man hitting you in the head and putting you in the back of his truck. You also notice a note with the words 'Time is running out' written on it.",
                clue: "The final puzzle will test your knowledge of history and literature."
            },
            5: {
                puzzle: "In Greek mythology, who was the king of the gods?",
                answer: "zeus",
                story: "As you solve the final puzzle, you hear a loud click, and a hidden door opens, leading you to freedom. You finally escape the abandoned room, grateful for your quick thinking and problem-solving skills."
            },
            6: {
                puzzle: "Solve the equation: 5 + 3 * (2^2 - 1) = ?",
                answer: "14",
                story: "You find a piece of paper with a complex equation. Solving it reveals a number that seems to be a code.",
                clue: "The next puzzle is encoded in binary."
            },
            7: {
                puzzle: "Decode the binary code: 01000011 01101111 01101101 01110000 01110101 01110100 01100101 01110010",
                answer: "computer",
                story: "You find an old computer in the corner of the room. It seems to hold some crucial information.",
                clue: "The final puzzle involves a sequence of letters."
            },
            8: {
                puzzle: "Crack the code: H 8, A 1, P 16, P 16, Y 25",
                answer: "happy",
                story: "You solve the final enigma, and the door creaks open. You step outside, finally free.",
                clue: "You have successfully solved all the puzzles."
            }
        };

        const story = document.getElementById("story");
        const levelText = document.getElementById("level1");
        const message = document.getElementById("message");
        const submitBtn = document.getElementById("submit");
        const endScreen = document.getElementById("endScreen");

        submitBtn.addEventListener("click", function() {
            const userInput = document.getElementById("input").value.toLowerCase();
            if (userInput === levels[currentLevel].answer) {
                if (currentLevel === 8) {
                    message.textContent = "Congratulations! You cracked all the codes and escaped the room.";
                    message.style.color = "green";
                    endScreen.style.display = "block";
                    puzzle.style.display = "none";
                } else {
                    currentLevel++;
                    story.textContent = levels[currentLevel].story;
                    levelText.textContent = `Level ${currentLevel}: ${levels[currentLevel].puzzle}`;
                    message.textContent = `Correct! ${levels[currentLevel].clue}`;
                    message.style.color = "green";
                }
            } else {
                message.textContent = "Wrong answer. Try again.";
                message.style.color = "red";
            }
        });
    </script>
</body>
</html>
