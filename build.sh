#!/bin/bash

# Clean up existing manifests on the dev node
rm -rf .repo/local_manifests .repo/manifests

# Initialize your AOSP 15.0 manifest tag or your main branch
repo init -u https://github.com/Rverseking/EternalOS-Manifests.git -b main --depth=1

# Sync the AOSP 15 source code
repo sync -c --force-sync --no-clone-bundle --no-tags -j$(nproc)
