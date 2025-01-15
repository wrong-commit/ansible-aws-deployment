#!/bin/bash
# Execute act
#   --secret-file load .env 
#   -e load JSON file environment variables 
#   --reuse allows Docker container reuse between runs
./bin/act \
    --secret-file .env \
    -e act_gh_env.json \
    --reuse 
