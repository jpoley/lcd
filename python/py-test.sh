mkdir -p ~/.aws-lambda-rie
curl -Lo ~/.aws-lambda-rie/aws-lambda-rie https://github.com/aws/aws-lambda-runtime-interface-emulator/releases/latest/download/aws-lambda-rie
chmod +x ~/.aws-lambda-rie/aws-lambda-rie

docker run -d -v ~/.aws-lambda-rie:/aws-lambda -p 9000:8080 \
       --entrypoint /aws-lambda/aws-lambda-rie lambda/python:3.9-alpine3.12
       /entry.sh app.handler

curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'
