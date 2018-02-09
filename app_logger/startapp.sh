#!/bin/bash

#Build the app

docker build -t app_logger .

#Start the app

docker run -dt --name logging_app  app_logger



