# Resource Monitor Account
resource "snowflake_resource_monitor" "RM-HR-ACC" {
  name = "RM-HR-ACCOUNT"

  credit_quota = 20

  frequency = "DAILY"
  start_timestamp  = "Immediately"

  notify_triggers            = [70, 80]
  suspend_trigger            = 85
  suspend_immediate_trigger  = 95

  notify_users = [snowflake_user.USR_HR_MIKE.name]
}

# Resource Monitor Warehouse DEV
resource "snowflake_resource_monitor" "RM-HR-WH-DEV" {
  name = "RM-HR-WH-DEV"

  credit_quota = 5

  frequency = "DAILY"
  start_timestamp  = "Immediately"

  warehouses = [snowflake_warehouse.WH_HR_DEV.name]

  notify_triggers            = [70, 75]
  suspend_trigger            = 80
  suspend_immediate_trigger  = 90

  notify_users = [snowflake_user.USR_HR_MIKE.name, snowflake_user.USR_HR_SARAH.name]
}

# Resource Monitor Warehouse PRO
resource "snowflake_resource_monitor" "RM-HR-WH-PRO" {
  name = "RM-HR-WH-PRO"

  credit_quota = 15

  frequency = "DAILY"
  start_timestamp  = "Immediately" 

  warehouses = [snowflake_warehouse.WH_HR_PRO.name]

  notify_triggers            = [70, 85]
  suspend_trigger            = 90
  suspend_immediate_trigger  = 95

  notify_users = [snowflake_user.USR_HR_MIKE.name, snowflake_user.USR_HR_JHONNY.name, snowflake_user.USR_HR_SARAH.name]
}
