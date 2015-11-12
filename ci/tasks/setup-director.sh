#!/usr/bin/env bash

set -e

source bosh-cpi-release/ci/tasks/utils.sh

check_param AZURE_CLIENT_ID
check_param AZURE_CLIENT_SECRET
check_param AZURE_TENANT_ID
check_param AZURE_GROUP_NAME
check_param AZURE_VNET_NAME_FOR_BATS
check_param AZURE_STORAGE_ACCOUNT_NAME
check_param AZURE_SUBSCRIPTION_ID
check_param AZURE_BOSH_SUBNET_NAME
check_param BASE_OS
check_param PRIVATE_KEY_DATA
check_param SSH_CERTIFICATE
check_param BAT_NETWORK_GATEWAY

source /etc/profile.d/chruby.sh
chruby 2.1.2

