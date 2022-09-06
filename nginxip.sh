#!/bin/bash

ifconfig | grep inet | tr -s " " | cut -d " " -f 3 | head -n 1 > /var/www/html/index.nginx-debian.html