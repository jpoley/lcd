go get -d ./...
go build .
docker build -t myapp .
docker run -p 9000:8080 random-letter:latest
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'