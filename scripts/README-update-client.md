# Update Client Bash Script

Create a bash script for the following commands and provide comments and error checking:

`cd crossfire-crossfire-client/;git pull;cd sounds/git pull`


## Script

Here's a bash script that executes the given commands with comments and error checking:

```bash

#!/bin/bash

# Navigate to the crossfire-crossfire-client directory
cd crossfire-crossfire-client/
if [ $? -ne 0 ]; then
    echo "Error: Failed to change directory to crossfire-crossfire-client/"
    exit 1
fi

# Pull the latest changes from the git repository
git pull
if [ $? -ne 0 ]; then
    echo "Error: Failed to pull latest changes in crossfire-crossfire-client/"
    exit 1
fi

# Navigate to the sounds directory within crossfire-crossfire-client
cd sounds/
if [ $? -ne 0 ]; then
    echo "Error: Failed to change directory to sounds/"
    exit 1
fi

# Pull the latest changes from the git repository in the sounds directory
git pull
if [ $? -ne 0 ]; then
    echo "Error: Failed to pull latest changes in sounds/"
    exit 1
fi

echo "Successfully pulled latest changes in both directories."

```

### Explanation of the script:

 1. `#!/bin/bash`: This shebang line tells the system to use the bash shell to interpret this script.
 2. `cd crossfire-crossfire-client/`: Change the directory to `crossfire-crossfire-client/`.
 3. `if [ $? -ne 0 ]; then ... fi`: Check if the previous command was successful. `$?` holds the exit status of the last executed command. If it's not zero (indicating an error), print an error message and exit the script with a non-zero status.
 4. `git pull`: Pull the latest changes from the git repository in the current directory.
 5. Repeat the directory change and git pull commands for the `sounds/` subdirectory within `crossfire-crossfire-client/`.
 6. Print a success message if all commands are executed without errors.

To use this script:

 1. Save it to a file, for example, `update-client.sh`.
 2. Make the script executable: `chmod +x update-client.sh`.
 3. Run the script: `./update-client.sh`.

This script ensures that any failure in changing directories or pulling from git is caught and reported, stopping the script from proceeding in case of an error.

## Desktop File

To run the server update command via GUI and from the VM Desktop

 1. A `.desktop` file needs to be created and saved in the `Desktop` directory (`/home/cfdev/Desktop`)

 ```
 
 [Desktop Entry]
 Type=Application
 Name=Server Update
 Exec=/home/cfdev/update-client.sh
 Terminal=true
 
 ```

 2. Permissions are updated to make the file executable, `chmod +x update-client.desktop`
 3. Double click the file to run the command