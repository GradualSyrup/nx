#!/bin/bash

# Note: using aarch64-unknown-none instead of our default building target triple since we don't have the target specs (cargo-nx uses them manually)
# This generates proper docs anyway (any aarch64-* target should probably work fine)
cargo doc --target=aarch64-unknown-none --release
cp -r $PWD/target/aarch64-unknown-none/doc/ docs