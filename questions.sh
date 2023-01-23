#!/bin/bash

# This script contains custom questions to ask the user during the installation.
# You can do what you like with the answers, but they won't be used by the installer.

# This file is called before the installation starts, just after selecting the preset.


# Example question:
echo ""
echo "This is an example question. Please answer it."
echo -n "> "
read answer1

if [ "$answer1" = "yes" ]; then
    echo "You answered yes."
else
    echo "You didn't answer yes."
fi


# Example iterative question:
while true; do
    echo ""
    echo "This is an example iterative question. Please answer either 'yes' or 'no'."
    echo -n "> "
    read answer2
    if [ "$answer2" = "yes" ]; then
        echo "You answered yes."
        break
    elif [ "$answer2" = "no" ]; then
        echo "You answered no."
        break
    else
        echo "You didn't answer yes or no. Try again."
    fi
done

# come back to the answers later
echo "You answered $answer1 and $answer2."

# exit 0 at the end of the script
exit 0
