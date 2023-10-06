pt-heartbeat [update] Docker Image
==========================

pt-heartbeat - Monitor MySQL replication delay.
https://docs.percona.com/percona-toolkit/pt-heartbeat.html

This image uses pt-heartbeat in update mode for update Master's heartbeat record

Usage:
ENV:
- DB_HOST: Master DB host
- DB_NAME: pt-hearbeat will update record in DB_HOST/heartbeat table
- DB_USER: username for connecting to DB_HOST
- DB_PASS: password for connecting to DB_HOST
- UPDATE_INTERVAL: Heartbeat update interval (default 1.0)

# TEST
