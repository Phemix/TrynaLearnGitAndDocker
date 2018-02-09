#!/bin/bash

#Build the app

docker build -t app_logger .
echo "successfully completed build"

#Start the app
docker run -dt --name "logging_app"  app_logger
echo "Image successfully started"


