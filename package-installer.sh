#!/usr/bin/env bash

# Check if first argument is given
if [ -z "$1" ]
    then
        echo "Please specify package file"
    else

    # Update source list
    sudo apt-get install update

    # Extracting package names out of given file
    readarray -t packages < $1

    for package in "${packages[@]}"
    do
        # Install the package
        echo "▶ $package"
        sudo apt-get --assume-yes install $package
    done
fi

echo "Done"