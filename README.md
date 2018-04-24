# package-installer
Shell script that installs all packages mentioned in a file.

## Instalation
### Install script
Execute folowing comand to download the script.
1. Install git `sudo apt-get update` and `sudo apt-get install git`
2. Download repository with `git clone https://github.com/MichelDequick/package-installer.git`

### Execute script
1. Go to the repository directory `cd package-installer`
2. Make the script executable `chmod +x package-installer.sh`
3. Execute the script `./package-installer.sh <arg1>`
    * arg1: path to file containing packages (required)

### Example
Executing `./package-installer.sh example.txt` will install all packages mentioned in `example.txt`
