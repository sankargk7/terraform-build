
#!/usr/bin/env bash


# List of targets (modules and resources)
TARGETS=("google_storage_bucket.static")

# Destroy specified targets
for TARGET in "${TARGETS[@]}"
do
    TARGET_LIST+=("-target=${TARGET}")
done
echo ${TARGET_LIST}
# Run terraform destroy with multiple -target options



