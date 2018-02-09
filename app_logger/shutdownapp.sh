#!/bin/bash

docker stop app_logger
echo "application stopped"

docker remove app_logger
echo "application removed"
