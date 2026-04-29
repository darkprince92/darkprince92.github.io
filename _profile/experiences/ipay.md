---
company: iPay Systems Ltd.
position: Software Engineer
location: Dhaka, Bangladesh
start_date: 2015-12
end_date: 2019-12
type: industry
tags: [backend, fintech, java, microservices, kafka, postgresql, elasticsearch, data-warehouse, cassandra, rabbitmq, android, mobile-wallet, data-pipeline, automation]
---

iPay Systems is a Bangladeshi fintech company operating one of the country's early mobile wallet platforms — iPay Bangladesh. I joined shortly after graduating and spent four years as a software engineer building much of the core backend infrastructure from the ground up.

I designed and developed backend microservices for the wallet platform, which handled millions of daily financial transactions. The system was built on Java microservices with PostgreSQL and Cassandra for data storage, RabbitMQ and Kafka for messaging, and deployed on bare-metal and early AWS infrastructure.

One of my most impactful projects was designing and building a composable promotional rule engine. The team's initial plan was to hardcode cashback logic directly inside existing services (payments, sign-ups, top-ups), but that approach couldn't accommodate iPay's promotions — which ranged from simple sign-up bonuses to complex multi-party incentives like referrals, each with arbitrary trigger conditions and eligibility rules that changed frequently. I built a standalone event-driven microservice that consumed Kafka events from any service domain and evaluated promotions defined as composable Groovy DSL rules — with any number of conditions and sub-conditions — without touching upstream services. New promotions could be authored, tested on the internal employee group in production, and rolled out to public users independently of any deployment cycle. Daily signups grew from 150 to 30,000, a 200× increase, largely driven by the flexible promotional programs this engine enabled.

I also built an automated user verification service that matched user-submitted photos and National ID cards against data in the national ID database. Using OCR (Tesseract) and face recognition libraries, the system could verify users automatically, reducing onboarding time from hours to minutes. This removed a major bottleneck in the user registration pipeline.

On the data side, I built an on-premise data warehouse and analytics platform — a streaming pipeline using Kafka Connect that pulled data from multiple production databases and shipped it to Elasticsearch and PostgreSQL for querying, reporting, and log monitoring. This gave the business team self-serve access to operational data for the first time.

iPay was foundational — it's where I developed engineering intuitions around fintech systems, event-driven architecture, and building things that actually work at scale under real production pressure.
