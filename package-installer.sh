#!/usr/bin/env bash

# Font: http://patorjk.com/software/taag/#p=display&f=Slant&t=PkgInstaller

echo ""
echo "    ____  __         ____           __        ____         "
echo "   / __ \/ /______ _/  _/___  _____/ /_____ _/ / /__  _____"
echo "  / /_/ / //_/ __ `// // __ \\/ ___/ __/ __ `/ / / _ \\/ ___/"
echo " / ____/ ,< / /_/ // // / / (__  ) /_/ /_/ / / /  __/ /    "
echo "/_/   /_/|_|\__, /___/_/ /_/____/\__/\__,_/_/_/\___/_/     "
echo "           /____/                                          "

# Check if first argument is given
if [ -z "$1" ]
    then
        echo "◈ Please specify package file"
    else

    # Update source list
    sudo apt-get update

    # Extracting package names out of given file
    readarray -t packages < $1

    for package in "${packages[@]}"
    do
        # Install the package
        echo "▶ $package"
        sudo apt-get --assume-yes install $package
    done
fi

echo "◇ Done"