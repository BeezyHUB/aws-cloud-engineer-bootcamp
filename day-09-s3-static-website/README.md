
# Day 9 — Amazon S3 Static Website Hosting

## Project Overview
Configured an Amazon S3 bucket to store and serve static website files. Explored S3 object storage, static website hosting, encryption, and public access controls.

## AWS Services
- Amazon S3
- AWS Identity and Access Management (IAM) — access control concepts

## Project Configuration
- AWS Region: us-east-2 (Ohio)
- Bucket: beezyhub-day09-static-website
- Object: index.html
- Object Ownership: Bucket owner enforced (ACLs disabled)
- Block Public Access: Enabled
- Versioning: Disabled
- Default Encryption: SSE-S3
- Static Website Hosting: Enabled
- Index Document: index.html

## Implementation
1. Created a general-purpose S3 bucket.
2. Uploaded the HTML website file.
3. Inspected the object's properties and URL.
4. Enabled static website hosting.
5. Configured index.html as the index document.
6. Tested the S3 object URL and website endpoint.

## Security and Troubleshooting
Both the object URL and website endpoint returned access errors because public access remained blocked.

The website hosting configuration is enabled, but the website is not publicly accessible.

HTTP 403 Forbidden indicates that access to the requested resource is denied.

## Key Takeaways
- S3 provides managed object storage without requiring an EC2 instance.
- Buckets contain objects identified by object keys.
- Static website hosting does not automatically grant public access.
- Block Public Access helps prevent unintended public exposure.
- SSE-S3 encrypts stored objects at rest.

## Project Status
Completed S3 storage and static website configuration practice. Public website deployment was not performed.
