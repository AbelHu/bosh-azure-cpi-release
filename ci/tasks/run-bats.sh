#!/usr/bin/env bash

set -e

source bosh-cpi-release/ci/tasks/utils.sh

check_param BASE_OS
check_param AZURE_CLIENT_ID
check_param AZURE_CLIENT_SECRET
check_param AZURE_TENANT_ID
check_param AZURE_GROUP_NAME
check_param PRIVATE_KEY_DATA
check_param BAT_VCAP_PASSWORD
check_param BAT_SECOND_STATIC_IP
check_param BAT_NETWORK_CIDR
check_param BAT_NETWORK_RESERVED_RANGE
check_param BAT_NETWORK_STATIC_RANGE
check_param BAT_NETWORK_GATEWAY
check_param BAT_NETWORK_STATIC_IP
check_param BAT_STEMCELL_URL
check_param BAT_STEMCELL_SHA
check_param AZURE_VNET_NAME_FOR_BATS
check_param AZURE_CF_SUBNET_NAME

source /etc/profile.d/chruby.sh
chruby 2.1.2
