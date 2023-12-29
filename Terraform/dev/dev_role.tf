# Grant role DEV create, modify and delete databases in database DEV
resource "snowflake_grant_privileges_to_role" "G_DEV_HR_DEV_DB" {
  privileges = ["SELECT", "INSERT", "DELETE", "UPDATE"]
  role_name = "DEV"
  on_schema_object {
    all {
      object_type_plural = "TABLES"
      in_database        = "BD_HR_DEV"
    }
  } 
}

# Grant role VIEWER privileges to read database DEV
resource "snowflake_grant_privileges_to_role" "G_VIEWER_HR_DEV_DB" {
  privileges = ["SELECT"]
  role_name  = "VIEWER"
  on_schema_object {
    all {
      object_type_plural = "TABLES"
      in_database        = "BD_HR_DEV"
    }
  }
}
