#!/bin/bash

docker stop logging_app
echo "application stopped"

docker rm  logging_app
echo "application removed"
