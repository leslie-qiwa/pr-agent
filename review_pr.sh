#!/bin/bash

set -x
sudo docker run --rm -it -p 8000:8000 -e LOG_LEVEL=DEBUG -e GITHUB_TOKEN=$GITHUB_TOKEN -v $(pwd)/config.yaml:/app/config.yaml -v $(pwd)/pr_agent/settings/configuration_my.toml:/app/pr_agent/settings/configuration.toml pr-agent --pr_url=$1 review_pr
