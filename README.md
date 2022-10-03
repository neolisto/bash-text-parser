# Overview:
	it's a simple bash-script for searching needed code or text values in multiple files/folders. It's a nice tool for searching code inside some folder including all folders in it. 
	Main usage: seek some code or text in big amount of files/folders.
	
## Requirements:
1. OS - *nix-system: Linux or MacOS;
2. Bash (or Zsh/Csh need to change path to interpetator) shell;
3. Previously downloaded repository where searching would be done.

# Before usage:
This script use a 3 parameters/variables that sets after script-initialization;

First variable - is path to target-folder in which script need to search;

Second variable - is mask of what type or name of files need to be found;

Third variable - is example of code/text whats need to be found.

##### All of these variables are mandatory.

## Usage:
0. Copy/move script into parrent folder (scrip and target-folder for searching should to be in same place) or set a full path to target-folder;
1. Call a script and set all mandatory variables:

`./searcher.sh target_folder type_or_name_of_files text_or_code_example`

2. Wait untill script will find all folders and files in it, and check all code/text inside of those files. All process you can watch in CLI of your shell;
3. If any of files in target-folder or/and folders in it contains a code or text example of third variable - script will find it and save into output file;
4. Last line shows how much matches was found in all of files.

## Usage example:
F. E.: exists folder "test":

![Image of schem](https://i.imgur.com/2ZuBwwS.png)

With 3 files:

![Image of schem](https://i.imgur.com/bqnvPEB.png)

These files contains:

![Image of schem](https://i.imgur.com/Otdp5gJ.png)

### Task: Need to find where and in what amount of files letter "s" finds in all -.txt and -.py files in folder "test".

1. `./searcher.sh test/ txt s`

Output 1: 

![Image of schem](https://i.imgur.com/caUptAm.png)

2. `./searcher.sh test/ py s`

Output 2: 

![Image of schem](https://i.imgur.com/zviPvjf.png)

3. File "searcher-result.txt" where all results are saved:

![Image of schem](https://i.imgur.com/6lbDraU.png)