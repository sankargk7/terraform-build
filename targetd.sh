#!/bin/bash


# List of targets (modules and resources)
TARGETS=(
    "google_storage_bucket.static"
)

# Destroy specified targets
for TARGET in "${TARGETS[@]}"
do
    TARGET_LIST+=("-target=${TARGET}")
done

# Run terraform destroy with multiple -target options
terraform destroy "${TARGET_LIST[@]}"


