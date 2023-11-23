#!/bin/bash
sudo docker build -t nginx-app:1.0 .
sudo docker run -d -p 81:81 nginx-app:1.0