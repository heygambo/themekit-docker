#!/bin/sh
VERSION=$(curl https://shopify-themekit.s3.amazonaws.com/releases/latest.json | jq -r .version)
echo "Building $VERSION version."
docker build -t gambo/themekit:$VERSION -t gambo/themekit:latest .
docker push gambo/themekit:$VERSION
docker push gambo/themekit:latest
