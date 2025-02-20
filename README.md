# MyShellScript Project

## Overview
This project consists of shell scripts that generate text files and count the number of lines within them. It is a simple demonstration of shell scripting for file manipulation and basic automation.

## Files in the Project

- `populateFiles.sh` - Generates text files (`file1.txt` to `file8.txt`) with random lines from the system dictionary.
- `countLines.sh` - Counts the number of lines in the specified text files and stores the results in `outputResults.txt`.
- `outputResults.txt` - Stores the results of the `countLines.sh` script.
- `file1.txt` to `file8.txt` - Sample text files created by `populateFiles.sh`.

## How to Use

### Step 1: Generate Random Text Files
Run the `populateFiles.sh` script to create text files with random content:
```sh
bash populateFiles.sh
```
This will generate `file1.txt` to `file8.txt` with random words from the system's dictionary.

### Step 2: Count Lines in Files
Run the `countLines.sh` script and provide the list of text files to analyze:
```sh
bash countLines.sh file1.txt file2.txt file3.txt file4.txt file5.txt file6.txt file7.txt file8.txt
```
This will count the number of lines in each file and store the results in `outputResults.txt`.

## Output Example
After running the scripts, the `outputResults.txt` file will contain results similar to:
```
File: file1.txt - Lines: 5
File: file2.txt - Lines: 7
File: file3.txt - Lines: 3
Total files checked: 3
Total lines counted: 15
```

## Requirements
- A Unix-based system (Linux/macOS)
- `bash` installed
- Access to `/usr/share/dict/words` (for random word generation)

## Notes
- If `countLines.sh` is executed without specifying files, it will display a usage message and exit.
- `populateFiles.sh` generates files with a random number of lines (between 1 and 10).

