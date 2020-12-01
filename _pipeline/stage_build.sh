#!/bin/bash
source "/opt/sb/sb-pipeline.sh"
set -e
source "_pipeline/config.sh"

bnw_app_build
bnw_app_promote
