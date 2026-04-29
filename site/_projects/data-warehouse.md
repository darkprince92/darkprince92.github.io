---
layout: page
title: Streaming Data Warehouse Pipeline
description: Real-time data pipeline using Kafka Connect, Elasticsearch, and PostgreSQL
importance: 3
category: work
---

A real-time data warehouse pipeline ingesting event streams from multiple sources and making them available for analytics and search.

**Tech Stack:** Apache Kafka, Kafka Connect, Elasticsearch, PostgreSQL, Debezium

**Key features:**

- Kafka Connect source connectors to ingest data from transactional databases via Debezium CDC (Change Data Capture)
- Sink connectors to stream data into Elasticsearch for full-text search and analytics dashboards
- PostgreSQL as the serving layer for structured analytical queries
- Schema registry integration for enforcing Avro schemas across producers and consumers
- Fault-tolerant design with dead-letter queues and offset management for at-least-once delivery guarantees
