# Day 1 — AWS VPC Networking

## Project Overview

Configured and reviewed a custom Virtual Private Cloud (VPC) in AWS to practice cloud networking, subnet design, routing, and internet connectivity.

**AWS Region:** us-east-2 (Ohio)

## Network Configuration

| Component | Configuration |
|---|---|
| VPC | bootcamp-vpc |
| VPC CIDR | 10.0.0.0/16 |
| Public Subnet 1 | 10.0.0.0/24 |
| Public Subnet 2 | 10.0.2.0/24 |
| Private Subnet 1 | 10.0.11.0/24 |
| Private Subnet 2 | 10.0.12.0/24 |
| Internet Gateway | bootcamp-igw |
| Public Route Table | bootcamp-public-rt |
| Private Route Table | bootcamp-private-rt |

## What I Configured

- Created a custom VPC with four non-overlapping subnets.
- Organized public and private subnets across two Availability Zones.
- Attached an Internet Gateway to the VPC.
- Configured the public route table with a default route to the Internet Gateway.
- Associated both public subnets with the public route table.
- Maintained a private route table containing only the local VPC route.

## Verification

Reviewed the AWS console configuration and confirmed:

- The Internet Gateway was attached to the correct VPC.
- The public route table contained an active `0.0.0.0/0` route to the Internet Gateway.
- Both public subnets were associated with the public route table.
- The private route table had no default internet route.

**Note:** This project documents AWS networking configuration. End-to-end EC2 connectivity was not tested.

## Skills Practiced

AWS VPC, CIDR notation, subnetting, Availability Zones, Internet Gateways, route tables, and public/private network segmentation.
