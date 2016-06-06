# Overview
This is my personal simple .bashrc code that prompts a dialog to select commands and execute them in a shell.
Sorry, Mac only.

## Using it

1 - Customize your commands at: /bash_profile/scripts/.bashrc, following the 3 steps over there.
> Note: you can also use icons into Cocoa alerts.


2 - Just type hub on your terminal and it will prompts a list of actions to being executed. 


## How to install 
Please, install CocoaDialog app on your Mac's Application Folder: 

>
https://mstratman.github.io/cocoadialog/


run the script: scripts > install.sh 

Or run this code at your own:

```bash
BASH_FILE="{ YOUR_PATH_TO_BASH_PROFILE_INSTALLATION }/bash_profile/scripts/.bashrc"

if [ -f $BASH_FILE ]; then
  . $BASH_FILE
fi
```



### NOTICE
- It is for my personal use, so you will see my git completion Romulo Bordezani
- There is a git 



# Copyright and License

````
It is licensed under the GNU General Public License. 
You can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

````
