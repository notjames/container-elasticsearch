#!/bin/bash

set -e

echo "MAX_LOCKED_MEMORY=unlimited" >> /etc/default/elasticsearch
echo '1: Before ulimit'
ulimit -l
ulimit -l unlimited
echo '2. After ulimit'
ulimit -l

exec gosu elasticsearch /usr/share/elasticsearch/bin/elasticsearch
