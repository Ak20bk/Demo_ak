#!/bin/bash

#####################################################################################
# Author        : Anand Kumar BV                                                    #
# Creation date : 21/09/2025                                                        #
# Purpose       : Practise                                                          #
# Version       : V.02                                                              #
# ###################################################################################
# COMMIT 1
# COMMIT 2
# COMMIT 3
# COMMIT 4
# COMMIT 5
# COMMIT 6
# COMMIT 7
# COMMIT 8

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
