# lcd

Lambda Container Demo
similar to: https://aws.amazon.com/blogs/aws/new-for-aws-lambda-container-image-support/

It is assumed that you already have the following setup:

1. an aws account
2. aws cli (v2) with credentials in place that has correct IAM access
3. docker running locally.  https://www.docker.com
4. jq library.  https://stedolan.github.io/jq/
5. a recent version of the language runtime you intend to run.
6. a real shell (Linux, Mac or WSL)


Run setup-ecr.sh
and this will create a new ecr repo in your account 
it will then do a docker login from AWS piped credentials into this repo

cd go 
./build.sh
./run.sh
./test/sh
. ./loginecr.sh
./upload.sh
(go deploy & run via console)
cd ..
./teardownecr.sh

video here
https://www.youtube.com/watch?v=9VipidFSFrA
