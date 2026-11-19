Explain Terms
EC2 = Virtual machines inside of AWS that i can rent and control
AMI = Amazon Machine Image - Template for operating system and software. It decides what starts in EC2.
Instance Type = Its picking from a choice of a CPU, memory of other capacities for a virtual machine(EC2). Size affects performance and pricing.
EBS = Elastic Block Store - Block storage attached to EC2 which stores files that may be billed.
Security Group = Firewall that controls network traffic thats allowed. Restricts SSH and allows HTTP or HTTPS for server.
SSH =  Remote terminal access on Linux that helps admins manage servers.
![alt text](image.png)
What Would Change to Host My Website on EC2?

To host my website on AWS EC2, I would need to launch a Linux virtual server inside my VPC, configure a security group to allow HTTP traffic on port 80, and then install a web server. I would then upload my index.html file to the EC2 instance and access the website using its public IP address.