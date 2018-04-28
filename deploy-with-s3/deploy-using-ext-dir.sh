#!/bin/sh

# This script assumes you have copied the contents of the
# ssh directory to ${M2_HOME}/lib/ext where the extensions will loaded

mvn deploy:deploy-file -B \
  -Durl=s3://s3-bucket-name \
  -Dfile=upload-1.0.jar \
  -DgroupId=com.mycompany \
  -DartifactId=upload \
  -Dversion=1.0 \
  -Dpackaging=jar
  -Daws.accessKeyId=aws-access-key \
  -Daws.secretKey=aws-secret-key
