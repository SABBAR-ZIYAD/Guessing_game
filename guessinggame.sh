#!/bin/bash
function guess_files {
  files=$(ls -1 | wc -l)
  while true; do
    echo "Guess how many files are in the current directory:"
    read guess
    if [[ $guess -eq $files ]]; then
      echo "Congratulations! You guessed it right!"
      break
    elif [[ $guess -lt $files ]]; then
      echo "Too low. Try again."
    else
      echo "Too high. Try again."
    fi
  done
}
guess_files
