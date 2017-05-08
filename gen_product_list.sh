#!/bin/bash
# This script generates a product/channel list in a csv file suitable for
# dragging and dropping into the list filter in the alfred workflow. It's not
# needed for normal use of the workflow, but is kept here so that the list of
# available products can be updated as needed.
PRODUCTS=(
analytics
angry-omnibus-toolchain
angrychef
automate
chef
chef-backend
chef-server
chef-server-ha-provisioning
chefdk
compliance
delivery
ha
harmony
inspec
manage
marketplace
omnibus-toolchain
private-chef
push-jobs-client
push-jobs-server
reporting
supermarket
sync
)

CHANNELS=(
    stable
    current
    unstable
)

rm -f products.csv
for PRODUCT in "${PRODUCTS[@]}"; do
    for CHANNEL in "${CHANNELS[@]}"; do
        echo "\"Latest $PRODUCT $CHANNEL version\",,\"$PRODUCT $CHANNEL\"" \
            >> products.csv
    done
done
