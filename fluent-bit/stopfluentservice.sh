#!/bin/bash

docker stop fluentbit_fluent_bit_1
docker stop fluentbit_auto_log_generator_1
echo "containers all stopped"


docker rm fluentbit_auto_log_generator_1
docker rm fluentbit_fluent_bit_1
echo "containers all removed"
