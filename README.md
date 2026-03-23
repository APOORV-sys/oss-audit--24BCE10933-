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
Generates a personalized report of the current system state[cite: 1]. It extracts the following details:
* **Distro**: Retrieves the pretty name of the Linux distribution[cite: 1].
* **Kernel**: Uses `uname -r` to identify the kernel version[cite: 1, 2].
* **User & Home**: Identifies the current user and their home directory path[cite: 1, 3].
* **Uptime & Time**: Displays how long the system has been running and the current formatted date[cite: 1].
* **License**: Confirms that the kernel is covered by the GNU General Public License (GPL) version 2[cite: 1].

### Script 2: FOSS Package Inspector
A package management utility that checks for the installation of an RPM package (defaults to `vlc`)[cite: 3, 4]. 
* **Validation**: Uses `rpm -q` to verify if a package exists[cite: 4].
* **Metadata**: Extracts the Version, License, and Summary using `grep -E`[cite: 4].
* **Philosophical Context**: Uses a `case` statement to provide unique descriptions for tools like `httpd`, `mysql`, `vlc`, `firefox`, and `git`[cite: 4, 5, 6, 7].

### Script 3: Disk and Permission Auditor
A security-focused script that loops through critical system directories using a `for` loop[cite: 8, 9].
* **Permission Audit**: Uses `ls -ld` combined with `awk` to report the permissions, owner, and group for directories like `/etc`, `/home`, and `/usr/bin`[cite: 8, 9].
* **Size Calculation**: Uses `du -sh` to calculate human-readable directory sizes[cite: 9].
* **Config Check**: Specifically monitors the `/etc/gamified-finance` directory for required permissions[cite: 10, 11].

### Script 4: Log File Analyzer
[cite_start]A robust log-parsing utility that uses a `while true` loop to ensure a valid file is provided[cite: 11, 12].
* [cite_start]**Input Validation**: Re-prompts the user if the provided log file is missing or empty[cite: 13].
* [cite_start]**Pattern Matching**: Uses `while-read` and `grep -iq` to count every instance of a keyword (defaulting to "error")[cite: 14, 15].
* [cite_start]**Summary**: Prints the total count and utilizes `tail -n 5` to display the most recent five matching occurrences[cite: 16, 17].

### Script 5: Open Source Manifesto Generator
An interactive script that creates a personalized philosophy statement[cite: 18].
* **User Input**: Asks three questions about your favorite open-source tools and your personal definition of freedom[cite: 18].
* **File Generation**: Uses the `date` command and `whoami` to create a uniquely named `.txt` manifesto file[cite: 18].
* **Data Handling**: Employs `>` and `>>` to write and append text into the final document[cite: 19, 20].
* **Alias Demonstration**: Includes a comment explaining how to create a Bash alias to view the manifesto quickly[cite: 19].

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
