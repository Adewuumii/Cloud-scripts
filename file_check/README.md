# Overview

`check.sh` is a simple bash script that checks if a file exists in the current directory and optionally creates it if it doesn't exist. This utility script provides a quick way to verify file existence in your current working directory. The script accepts a filename as an argument or prompts for interactive input, then checks if the file exists. If the file is found, it displays the full path; if not, it offers to create the file for you.

## Features

- **Flexible Input**: Accepts filename as command-line argument or interactive input
- **File Detection**: Checks for file existence in the current directory
- **Path Display**: Shows the absolute path of existing files using `realpath`
- **File Creation**: Offers to create non-existent files with user confirmation
- **Interactive Prompts**: User-friendly prompts for all input and decisions

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/Adewuumii/cloud_scripts/blob/main/LICENSE) file for details.