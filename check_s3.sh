#!/bin/bash

#####################################################################################
# Author        : Anand Kumar BV                                                    #
# Creation date : 21/09/2025                                                        #
# Purpose       : Practise                                                          #
# Version       : V.02                                                              #
# ###################################################################################
echo "===== $(date) ====="
echo "Checking AWS S3 buckets..."

# List all S3 buckets
aws s3 ls

echo ""
echo "Listing contents of each bucket:"
echo ""

# Loop through each bucket and list its contents
for bucket in $(aws s3api list-buckets --query "Buckets[].Name" --output text); do
    echo "Bucket: $bucket"
    aws s3 ls s3://$bucket --recursive --human-readable --summarize
    echo "-----------------------------"
done
