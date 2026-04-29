---
company: Priyo Sys Ltd.
position: Senior Software Engineer
location: Dhaka, Bangladesh
start_date: 2020-02
end_date: 2022-05
type: industry
tags: [backend, python, django, aws, enterprise-software, data-platform, distributed-systems, orm, access-control, s3, lambda, dynamodb, redis]
---

Priyo Sys is a Bangladeshi technology company building enterprise data platforms. As Senior Software Engineer, I designed and led engineering on a people-data inventory system — an enterprise product that modeled employees, organizations, and multi-degree relationship networks (think org-charts extended to knowledge graphs).

The most technically interesting contribution I made here was extending the Django ORM to support field-level access control, row-level versioning, and hierarchical user-level permissions. This was a non-trivial layer built directly into the ORM query layer so that access policies were enforced transparently at the data layer rather than scattered across application code. It required deep knowledge of Django internals and careful design to maintain query performance while adding policy evaluation overhead.

I also led the design and delivery of a nationwide quiz system on AWS for a high-profile government initiative (Bangabandhu Quiz, commissioned by the government of Bangladesh). The system needed to serve 100,000 concurrent users while delivering 50 million pre-generated questions. I architected a data pipeline using AWS S3, Lambda, and DynamoDB to preload and distribute questions, with Redis for fast key lookups and a load-balanced web tier. The system ran successfully at the required scale during the national event.

This role pushed me from individual contributor to technical lead — I was responsible for architecture decisions, reviewing code from junior engineers, and negotiating technical trade-offs directly with stakeholders.
