
# Identity
Deploy the identity services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t rameshillahotmail.onmicrosoft.com -s 4de3e0bf-877e-411c-ba67-a83e25934334

rover \
  --impersonate-sp-from-keyvault-url https://udp-kv-id-vkg.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/identity \
  -tfstate_subscription_id 4de3e0bf-877e-411c-ba67-a83e25934334 \
  -target_subscription 4de3e0bf-877e-411c-ba67-a83e25934334 \
  -tfstate identity.tfstate \
  -env udp \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a plan

```

rover \
  --impersonate-sp-from-keyvault-url https://udp-kv-id-vkg.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/identity \
  -tfstate_subscription_id 4de3e0bf-877e-411c-ba67-a83e25934334 \
  -target_subscription 4de3e0bf-877e-411c-ba67-a83e25934334 \
  -tfstate identity.tfstate \
  -env udp \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a apply


# Next steps

[Deploy Enterprise Scale - region1](../../level1/alz/region1/readme.md)
