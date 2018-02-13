#!/bin/bash

docker build -t fluentandpythonapp .
echo "app built up"
docker run -it fluentandpythonapp
echo "app running successfully"
