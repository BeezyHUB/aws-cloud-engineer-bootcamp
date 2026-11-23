# Day 8 — EC2 Configuration & Linux Web Server

## Project Overview
Explored AWS EC2 instance configuration and built a working HTTP web server using Linux (Ubuntu WSL), Python, and HTML.

This project demonstrates foundational cloud infrastructure, networking, security, and troubleshooting skills.

## Technologies Used
- Amazon EC2
- Amazon VPC
- Amazon EBS
- AWS KMS
- Linux (Ubuntu WSL)
- Python HTTP Server
- HTML

## Part 1: AWS EC2 Configuration

Explored the following configuration in the AWS Management Console without launching an instance:

| Component | Configuration |
|---|---|
| Region | us-east-2 (Ohio) |
| AMI | Amazon Linux 2023 |
| Instance Type | t3.micro |
| VPC | bootcamp-vpc |
| Subnet | bootcamp-public-1 |
| Public IP | Enabled |
| SSH (22) | My IP |
| HTTP (80) | Anywhere-IPv4 |
| HTTPS (443) | Anywhere-IPv4 |
| Storage | 8 GiB gp3 EBS |
| Encryption | AWS-managed KMS key (aws/ebs) |
| Delete on Termination | Yes |

**Note:** This was a configuration walkthrough. No EC2 instance was launched.

## Part 2: Linux Web Server

Created an HTML website and served it locally using Python.

### Start the Server

```bash
cd ~/aws-web-practice
python3 -m http.server 8000
```

### Access the Website

Open a browser and navigate to:

http://localhost:8000

### Stop the Server

Press Ctrl+C in the terminal.

## Part 3: Troubleshooting

**Issue:** The browser displayed a blank page.

**Investigation:**
- Confirmed the HTTP server returned status code 200.
- Inspected the HTML file using `cat index.html`.
- Checked file size using `ls -lh index.html`.
- Discovered that `index.html` was empty (0 bytes).

**Resolution:**
- Rebuilt the HTML file using Nano.
- Restarted the Python HTTP server.
- Verified the website displayed successfully in the browser.

## Skills Demonstrated
- EC2 instance configuration
- VPC and subnet selection
- Security group rule configuration
- EBS storage and encryption concepts
- Linux command-line operations
- HTTP server configuration
- HTTP status code interpretation
- Root-cause troubleshooting

## Outcome
Successfully served an HTML website through a local Linux HTTP server and explored AWS EC2 infrastructure configuration without creating billable cloud resources.
