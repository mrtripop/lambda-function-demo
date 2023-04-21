# AWS Lambda Function Demo

This project for demo way to implement AWS Lambda function on local machine.<br/>

See more detail on medium: https://medium.com/@mrtripop/write-aws-lambda-with-javascript-ebe983be1a08

## Prerequisite

- Node
- Docker
- Vscode
- Postman

## Clone repository

```
git clone https://github.com/mrtripop/lambda-function-demo.git
```

## How to test without run docker container

install dependency

```
npm install
```

test handler function
```
node test.js
```

## How to build and run docker container

build docker image
```
docker build -t lambda-demo-test .
```
run docker container from `lambda-demo-test` image
```
docker run --rm -p 9000:8080 --name lambda-demo lambda-demo-test
```

## How to make request

make request can use `curl` or `postman` or etc.

request body
```
{ "something" : "Hello, something" }
```

make request 
```
curl -X POST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{ "something" : "Hello, something" }'
```

result should be

```
Hello, something
```
