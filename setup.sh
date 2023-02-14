#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Please provide a value for {dockerHubUsername}"
  exit 1
fi

#find . -name '*.yaml' -type f -exec sed -i "s/{dockerHubUsername}/$1/g" {} +
#find . -name '*.yaml' -type f -exec sed -i "s|{dockerHubUsername}|$1|g" {} +
#find . -name '*.yaml' -type f -exec sed -i -E "s/{dockerHubUsername}/$1/g" {} +
find . -name '*.yaml' -type f -exec sed -i '' -E "s/{dockerHubUsername}/$1/g" {} +


