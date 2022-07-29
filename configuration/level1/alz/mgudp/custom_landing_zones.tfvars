custom_landing_zones = {
  mgudp-corp = {
    display_name               = "Corp"
    parent_management_group_id = "mgudp-landing-zones"
    archetype_config = {
      archetype_id   = "landingzone_corp"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  mgudp-online = {
    display_name               = "Online"
    parent_management_group_id = "mgudp-landing-zones"
    archetype_config = {
      archetype_id   = "landingzone_online"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  mgudp-corp-prod = {
    display_name               = "Production"
    parent_management_group_id = "mgudp-corp"
    archetype_config = {
      archetype_id   = "landingzone_prod"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  mgudp-corp-non-prod = {
    display_name               = "Non Production"
    parent_management_group_id = "mgudp-corp"
    archetype_config = {
      archetype_id   = "landingzone_non_prod"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  mgudp-online-web = {
    display_name               = "Non Production"
    parent_management_group_id = "mgudp-online"
    archetype_config = {
      archetype_id   = "landingzone_online_web"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

}