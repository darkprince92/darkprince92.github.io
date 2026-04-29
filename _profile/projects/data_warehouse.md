---
title: On-Premise Data Warehouse and Analytics Platform
company: iPay Systems Ltd.
tags: [kafka, kafka-connect, elasticsearch, postgresql, docker, distributed-systems, data-engineering, elk, log-monitoring, analytics]
---

iPay had no centralized analytics platform — data was siloed in multiple production databases with no easy way to query across them for business reporting or operational monitoring.

I built a streaming data warehouse and analytics platform from scratch. The core of the system was a Kafka Connect pipeline that pulled data continuously from multiple source databases (PostgreSQL, Cassandra) via JDBC connectors and shipped it to Elasticsearch and a separate analytical PostgreSQL instance for querying.

The platform served two purposes:
- **Business analytics:** The business team could query aggregated transaction data, user metrics, and cashback reports without touching production databases.
- **Log monitoring:** Application logs were shipped through the same pipeline and indexed in Elasticsearch, giving the operations team an ELK stack (Elasticsearch, Logstash, Kibana) for real-time log analysis and alerting.

The platform was deployed in distributed mode using Docker Swarm for multi-node availability. This was one of the more infrastructure-heavy things I built at iPay, and it required learning Kafka Connect internals deeply to handle schema evolution, connector failures, and consumer lag monitoring.
