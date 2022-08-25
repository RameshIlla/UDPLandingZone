global_settings = {
  default_region = "region1"
  regions = {
    region1 = "australiaeast"
  }
}
resource_groups = {
  rg1 = {
    name   = "databricks-re1"
    region = "region1"
  }
}
data_factory = {
  df1 = {
    name = "df-udp-databricks"
    resource_group = {
      key = "rg1"
      #lz_key = ""
      #name = ""
    }
  }
}
data_factory_pipeline = {
  dfp1 = {
    name = "example"
    resource_group = {
      key = "rg1"
      #lz_key = ""
      #name = ""
    }
    data_factory = {
      key = "df1"
      #lz_key = ""
      #name = ""
    }
  }
}
data_factory_trigger_schedule = {
  dfps1 = {
    name = "df-udp-databricks-trigger"
    resource_group = {
      key = "rg1"
      #lz_key = ""
      #name = ""
    }
    data_factory = {
      key = "df1"
      #lz_key = ""
      #name = ""
    }
    data_factory_pipeline = {
      key = "dfp1"
      #lz_key = ""
      #name = ""
    }

    interval  = 5
    frequency = "Day"
  }
}