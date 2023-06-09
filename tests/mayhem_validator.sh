#!/bin/bash

if ! command -v mayhem &> /dev/null
then
    echo "ERROR: Mayhem CLI could not be found. Please install Mayhem CLI first."
    exit
fi

if mayhem --verbosity debug validate . -f $1; then
  echo "Valid"
  exit 0
else
  echo "Invalid. Please check Mayhemfile contents."
  exit 1
fi
