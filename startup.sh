#!/bin/bash

set -e

service mysql start

mysql < init.sql

mysql < privileges.sql

nohup python3 CTF_project/ctf.pyc > logs.txt
