#!/bin/bash

# Create deployment zip for AWS Amplify
echo "Creating deployment package for AWS Amplify..."

# Remove any existing deployment zip
rm -f amplify-deployment.zip

# Create zip with all files at root level
zip -r amplify-deployment.zip . -x "*.DS_Store" "deploy.sh" "*.git*"

echo "Deployment package created: amplify-deployment.zip"
echo "Upload this zip file to AWS Amplify for manual deployment"