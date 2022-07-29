#
# Execute the following command to get the billing_account_name and management_group_id
#
# az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts/?api-version=2020-05-01
#
# To retrieve the first billing account
#
# billing_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:name}" -o tsv)
#
# enrollment_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:properties.enrollmentAccounts[0].name}" -o tsv)
#

subscriptions = {

  launchpad = {
    name            = "Visual Studio Premium with MSDN"
    create_alias    = false
    subscription_id = "4de3e0bf-877e-411c-ba67-a83e25934334"
  }
  identity = {
    name            = "Visual Studio Premium with MSDN"
    create_alias    = false
    subscription_id = "4de3e0bf-877e-411c-ba67-a83e25934334"
  }
  connectivity = {
    name            = "Visual Studio Premium with MSDN"
    create_alias    = false
    subscription_id = "4de3e0bf-877e-411c-ba67-a83e25934334"
  }
  management = {
    name            = "Visual Studio Premium with MSDN"
    create_alias    = false
    subscription_id = "4de3e0bf-877e-411c-ba67-a83e25934334"
  }
}