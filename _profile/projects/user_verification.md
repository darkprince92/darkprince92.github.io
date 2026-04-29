---
title: Automated User Verification Service
company: iPay Systems Ltd.
tags: [python, ocr, tesseract, face-recognition, airflow, automation, fintech, identity-verification]
impact: "Onboarding time reduced from hours to minutes"
---

iPay's user onboarding required verifying each new user's identity against their National ID card — a process that was manual, slow, and a significant bottleneck to user growth.

I designed and built an automated verification service that eliminated the manual review step for most users. The system accepted a user-submitted photo and a photo of their National ID, then:

1. Used Tesseract OCR to extract text fields (name, ID number, date of birth) from the National ID image.
2. Ran face recognition (using the `face_recognition` library) to compare the user's selfie photo against the ID card photo.
3. Matched extracted ID data against the national ID database to verify authenticity.

If all checks passed, the system approved the user automatically. Ambiguous cases were routed to a human reviewer queue.

The pipeline was orchestrated with Apache Airflow for scheduling, retries, and monitoring. The result was a reduction in onboarding time from hours to minutes for the majority of users, which directly contributed to the growth in daily signups.
