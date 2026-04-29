---
layout: page
title: Nationwide Quiz System
description: Serverless AWS quiz platform built for national-scale user load
importance: 1
category: work
---

A scalable, serverless quiz system designed to handle nationwide concurrent users, built entirely on AWS managed services.

**Tech Stack:** AWS S3, Lambda, DynamoDB, Redis (ElastiCache), API Gateway

**Key features:**

- Serverless architecture using AWS Lambda for quiz logic — zero server management
- DynamoDB for low-latency question/answer storage with on-demand capacity scaling
- Redis (ElastiCache) for session caching and leaderboard scoring to reduce database load
- Static frontend assets served via S3 + CloudFront CDN for fast delivery across regions
- API Gateway for routing and rate-limiting at scale
