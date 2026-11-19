# Day 4 — AWS High Availability Architecture

## Project Overview

Designed a highly available AWS web application architecture using an Application Load Balancer (ALB), EC2 instances, a Target Group, and an Auto Scaling Group (ASG).

The objective was to understand how AWS distributes incoming traffic, monitors server health, and maintains application availability when infrastructure fails.

**Project Type:** Architecture design and failure-scenario analysis  
**AWS Region:** us-east-2 (Ohio) — proposed deployment region  
**Deployment Status:** Design only; not deployed to AWS

## Architecture Components

| Component | Purpose |
|---|---|
| Application Load Balancer (ALB) | Distributes incoming HTTP/HTTPS traffic across healthy targets |
| Target Group | Defines the EC2 instances receiving traffic and their health-check settings |
| EC2 Instances | Run the web application |
| Auto Scaling Group (ASG) | Maintains desired instance capacity and replaces failed instances when properly configured |
| Launch Template | Defines the configuration used to launch EC2 instances |
| Availability Zones | Provide separation between application instances |

## Proposed Architecture

The design uses two EC2 instances distributed across separate Availability Zones:

- Availability Zone A: `us-east-2a`
- Availability Zone B: `us-east-2b`

Incoming traffic reaches the Application Load Balancer, which forwards requests through a Target Group to healthy EC2 instances.

An Auto Scaling Group manages the instance capacity.

### Auto Scaling Configuration

| Setting | Proposed Value |
|---|---|
| Minimum capacity | 2 |
| Desired capacity | 2 |
| Maximum capacity | 4 |

Additional instances would be launched when a configured scaling policy is triggered.

### Health Checks

The Target Group periodically checks the health of registered EC2 instances.

The health-check endpoint must exist on the application, such as `/` or `/health`.

If an instance fails its health checks, the ALB stops routing new requests to that target while healthy targets remain available.

## Failure Scenarios

### Scenario A — One EC2 Server Fails

**Problem:** One EC2 instance stops responding.

**Expected Response:** The ALB identifies the unhealthy target and stops routing new requests to it. The ASG can replace the failed instance when configured to respond to those health checks.

**Diagnostic Question:** Why is the EC2 instance failing its health checks?

### Scenario B — One Availability Zone Fails

**Problem:** An entire Availability Zone becomes unavailable.

**Expected Response
