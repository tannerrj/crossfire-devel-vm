# Introduction to VM Build Script

The `build.sh` script should **NOT** be needed, but it's included as a demonstration of how the VM was configured for this build & development environment.

## Script

Here's a bash script that executes the given commands with comments and error checking:

```bash

#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status
set -o pipefail  # Return value of a pipeline is the value of the last (rightmost) command to exit with a non-zero status

echo "Reloading systemd daemon..."
sudo systemctl daemon-reload

echo "Updating apt package index and upgrading packages..."
sudo apt update && sudo apt dist-upgrade

echo "Installing required Crossfire server packages..."
sudo apt-get install -y autoconf automake check flex g++ gcc git libcurl4 libcurl4-openssl-dev libgd-dev libgd-tools libsqlite3-0 libtool make python3-bsddb3 python3-dev sqlite3

echo "Cloning Crossfire server repositories..."
git clone https://git.code.sf.net/p/crossfire/crossfire-arch crossfire-crossfire-arch
git clone https://git.code.sf.net/p/crossfire/crossfire-maps crossfire-crossfire-maps
git clone https://git.code.sf.net/p/crossfire/crossfire-server crossfire-crossfire-server

echo "Setting up Crossfire server directories and permissions..."
cd crossfire-crossfire-server
cd lib
ln -s /home/cfdev/crossfire-crossfire-maps/ maps
sudo mkdir -p /usr/games/crossfire/share/crossfire
sudo chown -R cfdev:cfdev /usr/games/crossfire/
ln -s /home/cfdev/crossfire-crossfire-maps /usr/games/crossfire/share/crossfire/maps
ln -s /home/cfdev/crossfire-crossfire-arch ./arch
cd ..

echo "Configuring and building Crossfire server..."
sh autogen.sh && make && sudo make install
./server/crossfire-server
sudo chown -R cfdev:cfdev /usr/games/crossfire/
cd

echo "Installing Crossfire GTKv2 client packages..."
sudo apt install -y cmake git libcurl4-openssl-dev libglade2-dev libsdl2-mixer-dev libsdl1.2-dev libsdl-image1.2-dev libsdl-mixer1.2-dev libgtk2.0-dev valac

echo "Cloning Crossfire GTKv2 client repository..."
git clone https://git.code.sf.net/p/crossfire/crossfire-client crossfire-crossfire-client
cd crossfire-crossfire-client/

echo "Cloning Crossfire GTKv2 client sound repository..."
git clone https://git.code.sf.net/p/crossfire/crossfire-sounds sounds

echo "Configuring and building Crossfire GTKv2 client repository..."
mkdir build
cd build/
cmake .. && make && sudo make install
cd

echo "Installing Java Runtime Environment for CrossfireEditor and jxclient..."
sudo apt install -y default-jre

echo "Downloading CrossfireEditor and jxclient..."
cd /home/cfdev/Desktop
wget https://sourceforge.net/projects/crossfire/files/gridarta-crossfire/CrossfireEditor.jar/download
wget https://sourceforge.net/projects/crossfire/files/jxclient/jxclient.jar/download
chmod +x jxclient.jar
chmod +x CrossfireEditor.jar
cd

echo "Preparing to build Crossfire CRE..."
cd crossfire-crossfire-server/utils/cre/

echo "Installing required Crossfire CRE packages..."
sudo apt install -y qttools5-dev qttools5-dev-tools qtscript5-dev

echo "Building Crossfire CRE..."
qmake
make
cd

echo "Installing OpenSSH server..."
sudo apt install -y openssh-server

echo "DONE"
date

```

### Explanation of the script:

 1. `#!/bin/bash`: This shebang line tells the system to use the bash shell to interpret this script.
 2. `cd crossfire-crossfire-client/`: Change the directory to `crossfire-crossfire-client/`.
 3. `if [ $? -ne 0 ]; then ... fi`: Check if the previous command was successful. `$?` holds the exit status of the last executed command. If it's not zero (indicating an error), print an error message and exit the script with a non-zero status.
 4. `git pull`: Pull the latest changes from the git repository in the current directory.
 5. Repeat the directory change and git pull commands for the `sounds/` subdirectory within `crossfire-crossfire-client/`.
 6. Print a success message if all commands are executed without errors.