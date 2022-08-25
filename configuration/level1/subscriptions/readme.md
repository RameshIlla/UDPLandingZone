
### Platform subscriptions
Set-up the subscription delegations for platform and landingzone subscriptions

```bash
# For manual bootstrap:
# Login to the subscription Visual Studio Premium with MSDN with the user ramesh.illa_hotmail.com#EXT#@rameshillahotmail.onmicrosoft.com
rover login -t rameshillahotmail.onmicrosoft.com -s 4de3e0bf-877e-411c-ba67-a83e25934334

rover \
  --impersonate-sp-from-keyvault-url https://udp-kv-scp-gdu.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id 4de3e0bf-877e-411c-ba67-a83e25934334 \
  -tfstate platform_subscriptions.tfstate \
  -env udp \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the subscriptions management landing zone, you can move to the next step:

[Deploy the management services](../../level1/management/readme.md)