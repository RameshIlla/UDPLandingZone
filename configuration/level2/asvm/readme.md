# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t rameshillahotmail.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.0

rover \
  --impersonate-sp-from-keyvault-url https://udp-kv-idl0-xsd.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm \
  -tfstate_subscription_id 4de3e0bf-877e-411c-ba67-a83e25934334 \
  -target_subscription 4de3e0bf-877e-411c-ba67-a83e25934334 \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env udp \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a plan

```

