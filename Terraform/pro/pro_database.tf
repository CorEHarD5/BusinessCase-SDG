# Database PRO
resource "snowflake_database" "BD_HR_PRO" {
  name                        = "BD_HR_PRO"
  comment                     = "Database PRO"
  data_retention_time_in_days = 0
}
