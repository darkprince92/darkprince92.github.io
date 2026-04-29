---
title: Nationwide Quiz System
company: Priyo Sys Ltd.
tags: [aws, s3, lambda, dynamodb, redis, load-balancing, data-pipeline, python, high-availability]
scale: "50M questions, 100K concurrent users"
---

The Bangabandhu Quiz was a government-commissioned nationwide quiz platform for Bangladesh, designed to run a large-scale concurrent event for citizens across the country. I designed and engineered the backend infrastructure to support the expected load.

The primary challenge was delivering 50 million pre-generated questions to 100,000 concurrent users — a throughput and latency problem that required careful architectural choices.

I designed a data pipeline using AWS S3 and Lambda to preload and distribute question sets, with DynamoDB as the primary question store for fast random access. Redis was layered in to cache key lookups and eliminate redundant DynamoDB reads. The web tier was deployed behind a load balancer with auto-scaling to absorb traffic spikes during the event window.

The system ran successfully at scale during the national event. This was a full end-to-end engineering ownership experience — from architecture design to deployment and production monitoring.
