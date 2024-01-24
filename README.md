# ShutdownTimer.sh

This simple Linux shell script is used to set a shutdown timer or cancel a scheduled shutdown.

## Usage

1. **Set the shutdown timer:**
   - Run the script.
   - Choose option 1 from the menu.
   - Enter the time in minutes:seconds format (e.g., 2:30).

2. **Cancel shutdown:**
   - Run the script.
   - Choose option 2 from the menu.

## Instructions

- Before running the script, adjust permissions if necessary (`chmod +x shutdown_script.sh`).
- The script uses the `shutdown` command to perform shutdown operations.
- Invalid inputs are handled, and the user is prompted to select a valid option.

## Usage Example

```bash
./shutdownTimer.sh

```
-If does everyone not have exeute permission (no chmod +x)

```bash
bash shutdownTimer.sh

```


## Contributing

If you find any issues or have suggestions for improvements, feel free to open an issue or create a pull request.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
