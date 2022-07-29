
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t rameshillahotmail.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://udp-kv-co-uga.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/connectivity/azurerm_firewall_policies/prod \
  -tfstate_subscription_id 4de3e0bf-877e-411c-ba67-a83e25934334 \
  -target_subscription 4de3e0bf-877e-411c-ba67-a83e25934334 \
  -tfstate connectivity_firewall_policies_prod.tfstate \
  -env udp \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/connectivity_firewall_policies_prod.tfstate.tfplan \
  -a plan

```
