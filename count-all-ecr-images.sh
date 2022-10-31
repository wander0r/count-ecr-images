#!/bin/sh
REPO_LIST=$(aws ecr describe-repositories --query "repositories[].repositoryName" --output text --profile <sts profile>);
for repo in $REPO_LIST; do
    echo "list image for $repo"
        aws ecr list-images --repository-name $repo --profile <sts profile> | jq '.imageIds | unique_by(.imageDigest) | length'
done