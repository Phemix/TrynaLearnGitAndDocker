#!/bin/sh

/fluentapplication/usr/local/bin/fluent-bit -c /fluentapplication/usr/local/etc/fluent-bit/fluent-bit.conf
python3 pythonFileLogger.py
