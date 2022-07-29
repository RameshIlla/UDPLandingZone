
keyvaults = {
  level3 = {
    name               = "l3"
    resource_group_key = "level3"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "udp"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "1d2ef5a5-6eb5-4b4a-9c92-825edb9d91ba"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "6f8e3359-76b6-470f-838f-4ca1d93cb3eb"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "65c9d73f-8864-4c85-a0c8-300e8872e7af"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level4 = {
    name               = "l4"
    resource_group_key = "level4"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level4"
      caf_environment = "udp"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "1d2ef5a5-6eb5-4b4a-9c92-825edb9d91ba"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_non_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_non_prod"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_prod"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "6f8e3359-76b6-470f-838f-4ca1d93cb3eb"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "65c9d73f-8864-4c85-a0c8-300e8872e7af"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
