# Overview

This script, `count.sh`, is a simple bash script that counts the number of files in a specified directory, accepting an absolute path as an argument with interactive fallback for user input. The script is designed with user-friendly error handling, automatically prompting for valid input when an invalid or missing directory path is provided. It counts only regular files in the specified directory, excluding subdirectories and special file types.

The script handles directory path validation and provides interactive input prompts when needed. When executed with a valid directory path as an argument, it immediately returns the file count. If no argument is provided or an invalid path is given, the script enters interactive mode, continuously prompting the user until a valid directory path is entered. The script uses `find` with `-maxdepth 1` to count only files in the target directory without traversing subdirectories, ensuring accurate results for the specified location only.


## Technical Details

**Counting Method**: Uses `find "$dir" -maxdepth 1 -type f | wc -l` for accurate file counting

**Path Validation**: Uses bash conditional operators `[ -z "$1" ]` and `[ ! -d "$1" ]` for argument and directory validation

**Interactive Loop**: Uses a while loop with continuous validation until valid input is provided

**File Type Filtering**: Counts only regular files (`-type f`), excluding directories, symbolic links, and special files.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/Adewuumii/cloud_scripts/blob/main/LICENSE) file for details.