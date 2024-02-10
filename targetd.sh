
#!/usr/bin/env bash


# List of targets (modules and resources)
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update -y
sudo apt-get install terraform -y
echo terraform --version

TARGETS=("google_storage_bucket.static")

# Destroy specified targets
for TARGET in "${TARGETS[@]}"
do
    TARGET_LIST+=("-target=${TARGET}")
done
echo ${TARGET_LIST}
# Run terraform destroy with multiple -target options
terraform destroy "${TARGET_LIST[@]}"


