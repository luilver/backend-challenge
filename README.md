# README

## Prerequisites

The setups steps expect following tools installed on the system.

* Ruby 2.7.2

* Rails 6.1.3

* Sqlite3

* Postgres 9x or latest

* Yarn 1.22.10

* Webpacker 5.2.1

* Docker 19.03.13, build cd8016b6bc or latest

* Docker composer 1.25.5 or latest

## Manaully development deploy

### 1. Check out the repository

```
git clone git@github.com/luilver/backend-challenge.git
```

### 2. Bundle gems

```
cd backend-challenge
git checkout development
bundle
```

### 3. Migrate and seed the database

```
rails db:migrate db:seed
```

### 4. Run testings

```
rspec
```

### 5. RTFM

Start the service:

```
rails s
```

Open your browser and point to: 

http://localhost:3000/v1/swagger_doc.json

## Orchestration deployment

### 1. Run

```
docker-compose up
```

## Advanced

### Check out advanced branch

```
git checkout advanced
```

### Run testings

```
rspec
```

#### Note:
