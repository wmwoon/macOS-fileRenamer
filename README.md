**Update 9 Feb 2025:**
Improvements in This Version
	1.	Uses Finder’s Creation Date Directly
	•	Instead of mdls, the script now gets the creation date using tell application "Finder" to get creation date of aFile.
	•	Finder is often more reliable than macOS metadata.
	2.	Fixes Formatting for Single-Digit Months & Days
	•	A helper function formatNumber(n) ensures that months and days are always two digits (01-09 instead of 1-9).
	3.	Maintains Four-Digit Counter (0001, 0002, etc.)
	•	Ensures filenames are sorted correctly.

**Description**
A little tool used to help rename files based on the creation date, and rename files to custom names while preserving file extensions.
Example Output:

If you enter a custom name like Vacation Photo, and the creation date is 2023-10-19, the renamed files will look like:

	•	[2023-10-19] Vacation Photo - 0001.jpg
	•	[2023-10-19] Vacation Photo - 0002.jpg
	•	[2023-10-19] Vacation Photo - 0003.jpg

Running the Script:

	1.	Open the “Script Editor” on macOS.
	2.	Paste the script into the editor.
	3.	Run the script, select the folder, and enter your custom name when prompted.
