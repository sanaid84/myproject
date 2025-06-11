#!/bin/bash

echo "📝 Welcome to My Notes"
echo "What do you want to do?"
echo "1. Add note"
echo "2. View notes"

read -p "Choose (1 or 2): " choice

if [[ $choice == "1" ]]; then
  read -p "Write your note: " note
  echo "$(date): $note" >> notes.txt
  echo "✅ Note saved!"
elif [[ $choice == "2" ]]; then
  echo "📖 Your Notes:"
  cat notes.txt
else
  echo "❌ Invalid choice"
fi
