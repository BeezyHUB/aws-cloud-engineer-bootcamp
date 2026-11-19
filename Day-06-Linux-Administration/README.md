# Day 6 — Linux Administration & Bash Automation

## Project Overview

Practiced Linux system administration and basic Bash scripting using Ubuntu through Windows Subsystem for Linux (WSL).

The objective was to develop practical Linux command-line skills, understand file permissions, inspect system resources, and automate routine system checks.

**Environment:** Ubuntu Linux (WSL)  
**Project Type:** Hands-on Linux administration and Bash scripting

## Tools and Technologies

- Ubuntu Linux
- Windows Subsystem for Linux (WSL)
- Bash
- Linux command-line utilities

## Linux Administration Tasks

### 1. File and Directory Management

Practiced managing files and directories using Linux commands.

| Command | Purpose |
|---|---|
| `pwd` | Display the current working directory |
| `ls` | List files and directories |
| `cd` | Navigate between directories |
| `cp` | Copy files |
| `mv` | Move or rename files |
| `tail` | View the last lines of a file |

### 2. Log File Analysis

Created a practice application log containing:

```text
application started
application healthy
```

Practiced inspecting and searching logs using:

- `tail` — Display recent log entries.
- `grep` — Search for matching text.
- `wc -l` — Count lines in a file.

### 3. File Permissions

Practiced modifying Linux file permissions using:

```bash
chmod 600
```

This permission setting allows the file owner to read and write the file while removing access for the group and other users.

### 4. System Monitoring

Practiced inspecting system processes and resources using:

| Command | Purpose |
|---|---|
| `ps aux` | Display running processes |
| `top` | Monitor processes interactively |
| `df -h` | Display disk usage |
| `free -h` | Display memory usage |

## Bash Automation Project

Created a Bash script named `health-check.sh` to automate basic system checks.

The script displays:

1. The current date and time.
2. The current working directory.
3. Disk usage information.
4. A completion message confirming that the checks ran.

### Running the Script

From the project directory:

```bash
bash health-check.sh
```

The script uses standard Linux commands to collect basic system information.

**Note:** This is a basic monitoring exercise, not a production-ready health monitoring or alerting system.

## Restaurant Analogy

A restaurant manager performs opening checks to ensure the kitchen is ready for service.

The Bash script works like a digital checklist: it gathers system information
