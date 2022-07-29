
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      level3 = {
        "Reader" = {
          object_ids = {
            keys = [
              "65c9d73f-8864-4c85-a0c8-300e8872e7af", // caf_platform_maintainers
              "1d2ef5a5-6eb5-4b4a-9c92-825edb9d91ba"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
      level4 = {
        "Reader" = {
          object_ids = {
            keys = [
              "65c9d73f-8864-4c85-a0c8-300e8872e7af", // caf_platform_maintainers
              "1d2ef5a5-6eb5-4b4a-9c92-825edb9d91ba"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
    }

    storage_accounts = {
      level3 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "65c9d73f-8864-4c85-a0c8-300e8872e7af", // caf_platform_maintainers
              "1d2ef5a5-6eb5-4b4a-9c92-825edb9d91ba"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "1d2ef5a5-6eb5-4b4a-9c92-825edb9d91ba" // subscription_creation_landingzones
            ]
          }
        }
      }

      level4 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "65c9d73f-8864-4c85-a0c8-300e8872e7af", // caf_platform_maintainers
              "1d2ef5a5-6eb5-4b4a-9c92-825edb9d91ba"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "1d2ef5a5-6eb5-4b4a-9c92-825edb9d91ba" // subscription_creation_landingzones
            ]
          }
        }
      }

    }
  }
}
