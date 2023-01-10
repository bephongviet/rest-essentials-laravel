## Introduction

This repo is for the purpose of learning how to write RESTful Web Serbvice API using Laravel. It's meant to be basic. Please don **NOT** use it for production purposes.

## Version
- Laravel 9
- MySQL 8

## Setup

1. Create database and import `schema.sql`
2. Update database params in `.env` file (see Section on .env below)

## Start in dev mode

Install composer: https://getcomposer.org/doc/00-intro.md#installation-linux-unix-macos

Then, run below command

```
$ composer update
$ php artisan serve --port=5051
```

By default, one user is already created in the database:

```
email: laravel@linxhq.com
password: P4ssWrd@56
```

## File .env

```
APP_NAME=Laravel
APP_ENV=local
APP_KEY=base64:CX/L7Du5VMZf758l+pV1Wp+dRzFKch4kbOW9Ug1t5sM=
APP_DEBUG=true
APP_URL=http://localhost

LOG_CHANNEL=stack
LOG_DEPRECATIONS_CHANNEL=null
LOG_LEVEL=debug

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=8889
DB_DATABASE=rest-laravel
DB_USERNAME=root
DB_PASSWORD=root

BROADCAST_DRIVER=log
CACHE_DRIVER=file
FILESYSTEM_DISK=local
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

MEMCACHED_HOST=127.0.0.1

REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379

MAIL_MAILER=smtp
MAIL_HOST=mailhog
MAIL_PORT=1025
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS="hello@example.com"
MAIL_FROM_NAME="${APP_NAME}"

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=
AWS_USE_PATH_STYLE_ENDPOINT=false

PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
PUSHER_HOST=
PUSHER_PORT=443
PUSHER_SCHEME=https
PUSHER_APP_CLUSTER=mt1

VITE_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
VITE_PUSHER_HOST="${PUSHER_HOST}"
VITE_PUSHER_PORT="${PUSHER_PORT}"
VITE_PUSHER_SCHEME="${PUSHER_SCHEME}"
VITE_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"
```

## API calls

APIs available to call are listed below.

Create new account:

```
curl --location --request POST 'http://localhost:5051/api/user/register' \
--header 'Content-Type: application/json' \
--data-raw '{
        "name": "test3",
        "email": "test@linxhq.com", 
        "password": "P4ssWrd@5",
        "password_confirmation": "P4ssWrd@5"
}'
```

Verify new account using user id:

```
curl --location --request POST 'http://localhost:5051/api/user/verify' \
--header 'Content-Type: application/json' \
--data-raw '{
        "id": "1"
}'
```

Login:

```
curl --location --request POST 'http://localhost:5051/api/user/login' \
--header 'Content-Type: application/json' \
--data-raw '{
        "email": "laravel@linxhq.com", 
        "password": "P4ssWrd@56"
}'
```

Get user by id:

```
curl --location --request GET 'http://localhost:5051/api/user/1' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer eyJ0eXAi...' \
--data-raw ''
```

Change password:

```
curl --location --request PUT 'http://localhost:5051/api/user/change-password' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer eyJ0eXAiO...' \
--data-raw '{
        "id": 1,
        "email": "laravel@linxhq.com", 
        "password": "P4ssWrd@56"
}'
```