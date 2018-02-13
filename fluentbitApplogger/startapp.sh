#!/bin/bash

docker build -t fluentandpythonapp .
echo "app built up"
docker run -v /Users/ooyinkan/TrynaLearnGitAndDocker/fluentbitApplogger/outlogs.log:/poc.log -it fluentandpythonapp
echo "app running successfully"
