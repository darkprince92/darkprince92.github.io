---
title: Composable Promotional Rule Engine (Cashback Service)
company: iPay Systems Ltd.
tags: [kafka, groovy, distributed-systems, event-driven, rule-engine, fintech, java, real-time-processing, microservices, dsl]
impact: "200× growth in daily signups (150 → 30,000)"
---

iPay ran promotions across many surfaces — sign-up bonuses, account verification rewards, credit card payments within the first 5 days, mobile top-ups, referrals, and more. Each promotion had its own trigger conditions, eligibility rules, and reward logic. The team's initial approach was to hardcode business logic directly inside the sign-up, payment, and other existing services — reading fixed values from the database and triggering cashback inline. The problem was fundamental: promotions are inherently innovative and varied. Rules change frequently, some are reused with slight modifications, others are complex multi-party incentives like referrals, and new trigger domains emerge over time. Hardcoding rules into individual services meant any change required coordinated updates across multiple codebases, with no way to test rules in isolation or iterate quickly.

I recognized this as a flexibility and composability problem, not just an engineering one. I designed a composable, rule-based promotional engine where each promotion was expressed as a configurable rule with any number of conditions and sub-conditions — decoupled entirely from the services that generated the events. Business rules were defined as Groovy DSL scripts so that promotions could be authored, modified, and tested without a code deployment cycle. The rule schema was expressive enough to capture any trigger (transaction completed, user signed up, card payment made) and any condition across different service domains.

To decouple the engine from the rest of the platform, I built it as an independent event-driven microservice. Events from services like payments, sign-ups, and top-ups were published to Kafka topics; the rule engine consumed those events, evaluated applicable rules, and credited cashback to user wallets. This gave the service its own scalability configuration and lifecycle — it could be updated, scaled, or redeployed without touching any upstream service.

Critically, the system supported staged rollouts: new promotions were tested on the internal employee group in production before being opened to public users, enabling safe iteration on complex rule logic.

The impact was significant: daily new user signups grew from approximately 150 to 30,000 — a 200× increase — largely driven by the promotional programs this engine made possible.
