# Enterprise scale

## Deploy Enterprise Scale

Note you need to adjust the branch to deploy Enterprise Scale to 2203.0

```bash
az account clear
# login a with a user member of the caf-platform-maintainers group
rover login -t rameshillahotmail.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.0

rover \
  --impersonate-sp-from-keyvault-url https://udp-kv-es-kbx.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution/add-ons/caf_eslz \
  -var-folder /tf/caf/configuration/level1/alz/mgudp \
  -tfstate_subscription_id 4de3e0bf-877e-411c-ba67-a83e25934334 \
  -tfstate alz_mgudp.tfstate \
  -env udp \
  -level level1 \
  -p ${TF_DATA_DIR}/alz_mgudp.tfstate.tfplan \
  -a plan

  rover \
  --impersonate-sp-from-keyvault-url https://udp-kv-es-kbx.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution/add-ons/caf_eslz \
  -var-folder /tf/caf/configuration/level1/alz/mgudp \
  -tfstate_subscription_id 4de3e0bf-877e-411c-ba67-a83e25934334 \
  -tfstate alz_mgudp.tfstate \
  -env udp \
  -level level1 \
  -p ${TF_DATA_DIR}/alz_mgudp.tfstate.tfplan \
  -a apply

```

# Next steps

[Deploy asvm](../../level2/asvm/readme.md)
[Deploy Connectivity](../../level2/connectivity/virtual_wans/readme.md)
