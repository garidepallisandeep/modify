#!/bin/bash

#This script is used to run the redis-server and greet app

echo "start the redis-server"
redis-server --daemonize yes

echo "Chek the redis server status"
ps aux | grep redis-server

echo "run the greet app"
python /greet/greet.py