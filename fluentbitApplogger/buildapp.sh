#!/bin/bash

docker build -t fluentandpythonapp  \
    --build-arg ASKID=OPTUMCNAP-05401 \
    --build-arg IPADDRESS=`ipconfig getifaddr en0` \
    --build-arg DEVICEVENDOR="Optum" .
echo "Build Complete"
echo "app built up"


