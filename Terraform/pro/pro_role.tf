# Grant role DA create tables and insert data in database PRO
resource "snowflake_grant_privileges_to_role" "G_DA_HR_PRO_DB" {
  privileges = ["MODIFY", "CREATE TABLE", "USAGE"]
  role_name  = "DA"
  on_schema {
    all_schemas_in_database = "BD_HR_PRO"
  }
}

# Grant role DEV update data in database PRO
resource "snowflake_grant_privileges_to_role" "G_DEV_HR_PRO_DB" {
  privileges = ["MODIFY"]
  role_name  = "DEV"
  on_schema {
    all_schemas_in_database = "BD_HR_PRO"
  }
}

# Grant role VIEWER privileges to read database PRO
resource "snowflake_grant_privileges_to_role" "G_VIEWER_HR_PRO_DB" {
  privileges = ["SELECT"]
  role_name  = "VIEWER"
  on_schema_object {
    all {
      object_type_plural = "TABLES"
      in_database        = "BD_HR_PRO"
    }
  }
}
