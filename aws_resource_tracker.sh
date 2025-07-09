#!/bin/bash

##################################
# Author   : shashanka K U
# Date     : 8 July 2025
# Version  : v1
# Purpose  : This script will report the AWS usage
#
# Resources tracked:
# - AWS S3
# - AWS EC2
# - AWS Lambda
# - AWS IAM users
##################################

set -x
set -o pipefail
set -e

# List S3 buckets
echo "List of S3 buckets:"
aws s3 ls

# List EC2 instances
echo "List of EC2 instances:"
aws ec2 describe-instances --query "Reservations[*].Instances[*].InstanceId" --output text

# List Lambda functions
echo "List of Lambda functions:"
aws lambda list-functions --query "Functions[*].FunctionName" --output text

# List IAM users
echo "List of all IAM users:"
aws iam list-users --query "Users[*].UserName" --output text

