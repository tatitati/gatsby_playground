#!/bin/bash

export APP_TEMPLATE='ha_l7_container'  # accepted values are ha_l7_container, ha_l7_instance, single_l4_instance
export APP_NAME='inspector_frontend_admin'
export APP_PORT='8000'
export APP_STAGE='dna'

# A public/live FQDN is required in the live environment. Make sure the whole
# FQDN is no longer than 64 chars. For more details, check
# https://github.com/simplybusiness/brave_new_world/blob/master/docs/FAQ.md

export APP_LIVE_PUBLIC_DOMAIN='simplybusiness.io' # live environment only
export APP_LIVE_PUBLIC_FQDN="${APP_NAME//_/-}.${APP_LIVE_PUBLIC_DOMAIN}" # live environment only - max 64 chars
export APP_HA_L7_CONTAINER_DEPLOYMENT_STRATEGY="red-black-strict"
export APP_HA_L7_CONTAINER_HEALTH_CHECK_PATH="/health"
export APP_HA_L7_CONTAINER_NODES_DESIRED="1"
export APP_HA_L7_CONTAINER_NODES_MAX='1'
export APP_HA_L7_CONTAINER_MEMORY='8192'
export APP_TEAM_KMS_KEY_ACCESS="dna-devs"
