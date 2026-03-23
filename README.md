# Open Source System Audit (OSSA)

A suite of five comprehensive Bash scripts designed to provide essential system information, package inspection, and security auditing for Linux environments. [cite_start]This project was developed as a finalized, fully-functioning solution for the Open Source Audit assignment[cite: 1].

---

##  Student Information

| **Student Name** | Apoorv Gupta |
| **Roll Number** | 24BCE10933 |

---

##  Chosen Software
This project is built and optimized for the **Linux** operating system, utilizing standard GNU command-line utilities.

---

##  Script Index & Descriptions

### Script 1: System Info Reporter
Generates a personalized report of the current system state. It extracts the following details:
* **Distro**: Retrieves the pretty name of the Linux distribution.
* **Kernel**: Uses `uname -r` to identify the kernel version.
* **User & Home**: Identifies the current user and their home directory path.
* **Uptime & Time**: Displays how long the system has been running and the current formatted date.
* **License**: Confirms that the kernel is covered by the GNU General Public License (GPL) version 2.

### Script 2: FOSS Package Inspector
A package management utility that checks for the installation of an RPM package (defaults to `vlc`). 
* **Validation**: Uses `rpm -q` to verify if a package exists.
* **Metadata**: Extracts the Version, License, and Summary using `grep -E`.
* **Philosophical Context**: Uses a `case` statement to provide unique descriptions for tools like `httpd`, `mysql`, `vlc`, `firefox`, and `git`.

### Script 3: Disk and Permission Auditor
A security-focused script that loops through critical system directories using a `for` loop.
* **Permission Audit**: Uses `ls -ld` combined with `awk` to report the permissions, owner, and group for directories like `/etc`, `/home`, and `/usr/bin`.
* **Size Calculation**: Uses `du -sh` to calculate human-readable directory sizes.
* **Config Check**: Specifically monitors the `/etc/gamified-finance` directory for required permissions.

### Script 4: Log File Analyzer
A robust log-parsing utility that uses a `while true` loop to ensure a valid file is provided.
* **Input Validation**: Re-prompts the user if the provided log file is missing or empty.
* **Pattern Matching**: Uses `while-read` and `grep -iq` to count every instance of a keyword (defaulting to "error").
* **Summary**: Prints the total count and utilizes `tail -n 5` to display the most recent five matching occurrences.

### Script 5: Open Source Manifesto Generator
An interactive script that creates a personalized philosophy statement.
* **User Input**: Asks three questions about your favorite open-source tools and your personal definition of freedom.
* **File Generation**: Uses the `date` command and `whoami` to create a uniquely named `.txt` manifesto file.
* **Data Handling**: Employs `>` and `>>` to write and append text into the final document.
* **Alias Demonstration**: Includes a comment explaining how to create a Bash alias to view the manifesto quickly.

---

##  Step-by-Step Run Instructions

1. **Navigate to the directory**: `cd oss-audit--24BCE10933-`
2. **Set Permissions**: `chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh`
3. **Execute**:
   * System Check: `./script1.sh`
   * Package Check: `./script2.sh [package_name]`
   * Audit: `./script3.sh`
   * Log Search: `./script4.sh [file_path] [keyword]`
   * Manifesto: `./script5.sh`

---

##  Dependencies
* **Interpreter**: `/bin/bash`
* **Utilities**: `rpm`, `awk`, `grep`, `du`, `tail`, `cut`, and standard `date`/`whoami` tools.
