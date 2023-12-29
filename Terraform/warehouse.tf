# Warehouse DEV
resource "snowflake_warehouse" "WH_HR_DEV" {
  name = "WH-HR-DEV"

  warehouse_size      = "xsmall"
  auto_suspend        = 60
  initially_suspended = true
  min_cluster_count   = 1
  max_cluster_count   = 1
}

# Warehouse PRO
resource "snowflake_warehouse" "WH_HR_PRO" {
  name = "WH-HR-PRO"

  warehouse_size      = "xsmall"
  auto_suspend        = 300
  initially_suspended = true
  min_cluster_count   = 1
  max_cluster_count   = 5
}
