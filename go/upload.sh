docker tag app:latest app:0.0.1
docker image tag app:0.0.1 $ECR_URI:0.0.1
docker image push $ECR_URI:0.0.1
