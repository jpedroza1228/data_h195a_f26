#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Use the first argument for the week folder and the second for the slide file.
WEEK_FOLDER="${1:-Week 3}"
SLIDE_FILE="${2:-w3_faculty_comm.qmd}"

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
SLIDE_PATH="$SCRIPT_DIR/slides/$WEEK_FOLDER/$SLIDE_FILE"

echo "Starting live preview for: $SLIDE_PATH"

# Run quarto preview to open slides in your browser with live reload
quarto preview "$SLIDE_PATH"
