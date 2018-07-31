#!/bin/sh
curl https://shopify-themekit.s3.amazonaws.com/releases/latest.json
echo "Which version is this? "
read VERSION
docker build -t gambo/themekit:$VERSION .
docker push gambo/themekit:$VERSION
