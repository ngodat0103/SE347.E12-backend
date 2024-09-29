# Docker Compose Setup for NestJS API with Redis and MongoDB

This repository contains a Docker Compose setup for a NestJS API application, along with Redis and MongoDB services.

## Prerequisites

- Docker
- Docker Compose

## Environment Variables

Create a `.env` file in the root directory and add the following environment variables:

```env
URL_MONGO_DB=<your_mongo_db_url>
SECRET_TOKEN=<your_secret_token>
EXPIRESIN_TOKEN=<your_token_expiry>
FIREBASE_PROJECT_ID=<your_firebase_project_id>
FIREBASE_PRIVATE_KEY=<your_firebase_private_key>
FIREBASE_EMAIL_CLIENT=<your_firebase_email_client>
REDIS_HOST=<your_redis_host>
REDIS_PORT=<your_redis_port>
REDIS_PASSWORD=<your_redis_password>
# MAIL_HOST=<your_mail_host>
# MAIL_USER=<your_mail_user>
# MAIL_PASSWORD=<your_mail_password>
# MAIL_FROM=<your_mail_from>