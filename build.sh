#!/bin/bash


rm -rf .repo/local_manifests .repo/manifests

# Initializes AOSP 15.0 manifest from scratch
repo init -u https://github.com/Rverseking/EternalOS-Manifests.git -b main --depth=1

# Sync the source code using all available CPU threads
repo sync -c --force-sync --no-clone-bundle --no-tags -j$(nproc)

