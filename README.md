# Overview
This is a .bash code that prompts a dialog to select commands and execute them in a shell.
Sorry, Mac only.

## Using it

1 - Configure your commands at: scripts/.bashrc following some examples over there.

2 - Just type hub on your terminal and it will prompts a list of actions to being executed. 


## How to install 
Please, install CocoaDialog app on your Mac: 

>
https://mstratman.github.io/cocoadialog/


Add these following lines to your .bash_profile

```bash
BASH_FILE="{ YOUR_PATH_TO_BASH_PROFILE_INSTALLATION }/bash_profile/scripts/.bashrc"

if [ -f $BASH_FILE ]; then
  . $BASH_FILE
fi
```



### Authors/Contributers
- Romulo Bordezani



# Copyright and License

````
It is licensed under the GNU General Public License. 
You can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

````
