---
layout: page
title: Instant Cashback Rule Engine
description: Groovy DSL rule engine processing Kafka event streams for real-time cashback rewards
importance: 4
category: work
mermaid:
  enabled: true
---

A flexible, business-configurable rule engine that evaluates transaction events in real time to determine cashback eligibility and amounts without requiring code deployments for rule changes.

```mermaid
graph TD
  A[Transaction Event] --> B[Kafka Consumer]
  B --> C[Spring Boot Rule Engine]
  C --> D{Groovy DSL Evaluation}
  D -->|Rule Match| E[Calculate Cashback Amount]
  D -->|No Match| F[Skip — No Reward]
  E --> G[Publish: cashback-events topic]
  G --> H[Notification Service]
  G --> I[Ledger Service]
  G --> J[Analytics Service]
  C --> K[(Audit Log: Every Evaluation)]
```

**Tech Stack:** Groovy, Apache Kafka, Java, Spring Boot

**Key features:**

- Domain-Specific Language (DSL) in Groovy allowing business teams to author cashback rules without engineering involvement
- Rules are loaded dynamically at runtime — no redeployment needed when business rules change
- Kafka event stream consumer processes transaction events as they occur for sub-second cashback determination
- Rule evaluation results published back to Kafka for downstream services (notification, ledger, analytics)
- Audit logging of every rule evaluation for compliance and debugging
