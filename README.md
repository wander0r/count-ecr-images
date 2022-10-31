# count-ecr-images

Overview

This bash script will utilize your STS token configured in `~/.aws/config` and `~/.aws/credentials` and will run AWS CLI commands, specfically `aws ecr describe-repositories` and `aws ecr list-iamges` and will count the total of images in each ECR repository.

Usage

`./count-all-ecr-images.sh > output.csv`
