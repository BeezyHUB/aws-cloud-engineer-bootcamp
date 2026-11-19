# Day 5 — AWS IAM Security

## Project Overview

Studied AWS Identity and Access Management (IAM) fundamentals as part of my AWS Cloud Engineer Bootcamp.

The objective was to understand how AWS controls access to cloud resources, protects accounts, and applies the principle of least privilege.

**Project Type:** Security fundamentals and conceptual review  
**AWS Service:** AWS Identity and Access Management (IAM)

## Topics Covered

### 1. Multi-Factor Authentication (MFA)

Reviewed how MFA adds an additional layer of security beyond a password.

Enabled and verified MFA for the AWS root account.

### 2. IAM Users and Policies

Studied how IAM policies define which actions are allowed or denied on AWS resources.

An IAM policy typically includes:

- **Effect:** Whether an action is allowed or denied.
- **Action:** The AWS operations covered by the statement.
- **Resource:** The AWS resources to which the statement applies.

### 3. Principle of Least Privilege

Learned that users and applications should receive only the permissions necessary to perform their responsibilities.

For example, an application that only needs to read files from an S3 bucket should not automatically receive permission to delete those files.

### 4. IAM Roles

Reviewed how IAM roles provide temporary credentials to trusted identities and AWS services.

For example, an EC2 instance can use an IAM role to access permitted AWS resources without storing long-term AWS access keys on the server.

### 5. Root Account Security

Reviewed the importance of protecting the AWS root account, enabling MFA, and using appropriately permissioned identities for everyday administrative work.

## Restaurant Analogy

IAM works like an employee access-control system in a restaurant.

- The chef receives access to the kitchen.
- The cashier receives access to the register.
- The manager receives broader permissions based on their responsibilities.
- The restaurant owner retains highly privileged access for exceptional situations.

Each employee should have only the access needed to perform their job.

## Skills Practiced

- AWS IAM fundamentals
- Multi-factor authentication
- IAM policy structure
- Least-privilege access design
- IAM role concepts
- Root account security awareness

## Project Scope

This project focused on IAM security concepts and AWS root account MFA.

**IAM user, policy, and role creation were not performed as part of this documented exercise.**

## Future Improvements

- Create a least-privilege IAM policy in a practice environment.
- Configure an IAM role for an EC2 instance.
- Test permitted and denied actions.
- Explore IAM Access Analyzer and AWS CloudTrail.
