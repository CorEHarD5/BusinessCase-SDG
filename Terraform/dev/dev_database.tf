# Database DEV
resource "snowflake_database" "BD_HR_DEV" {
  name                        = "BD_HR_DEV"
  comment                     = "Database DEV"
  data_retention_time_in_days = 0
}
