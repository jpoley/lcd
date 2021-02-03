export ECR_URI=$(aws ecr describe-repositories --repository-names jp-lcd |  jq -r '.repositories[].repositoryUri')
echo $ECR_URI
aws ecr get-login-password | docker login --username AWS --password-stdin $ECR_URI
