#!/bin/bash

exec  redis-server --port 6379 --protected-mode no --requirepass "root"