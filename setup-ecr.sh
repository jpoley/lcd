export ECR_URI=$(aws ecr create-repository --repository-name jp-lcd --image-scanning-configuration scanOnPush=true | jq -r '.repository.repositoryUri')
echo $ECR_URI
aws ecr get-login-password | docker login --username AWS --password-stdin $ECR_URI

