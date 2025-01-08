---
title: S3 automatically enables block all public access configuration per default
description: S3 automatically enables block all public access configuration per default
date: 2025-01-08
slug: 08012025-s3blockallpublicacess
tags:
  - AWS
  - S3
---

Starting form **April 2023** ([Link to AWS
blog](https://aws.amazon.com/blogs/aws/heads-up-amazon-s3-security-changes-are-coming-in-april-of-2023/)),
All new created S3 buckets will have block public access configuration enabled
per default.

The default configuration looks similar to this terraform code


```code
resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
```
