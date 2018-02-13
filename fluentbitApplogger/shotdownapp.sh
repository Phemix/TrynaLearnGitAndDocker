#!/bin/bash

docker stop fluentandpythonapp
echo "container successfully stopped"
docker rm fluentandpythonapp
echo "container successfully removed"

