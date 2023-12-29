# Role DATA ANALYST
resource "snowflake_role" "ROL_HR_DA" {
  name    = "DA"
  comment = "Role DATA ANALYST"
}

# Grant DA to Jhonny
resource "snowflake_role_grants" "GRANT_ROL_HR_DA" {
  role_name = snowflake_role.ROL_HR_DA.name

  users = [snowflake_user.USR_HR_JHONNY.name,]
}

# Role DEV
resource "snowflake_role" "ROL_HR_DEV" {
  name    = "DEV"
  comment = "Role DEV"
}

# Grant DEV to Sarah
resource "snowflake_role_grants" "GRANT_ROL_HR_DEV" {
  role_name = snowflake_role.ROL_HR_DEV.name

  users = [snowflake_user.USR_HR_SARAH.name,]
}

# Grant AccountADMIN to Mike
resource "snowflake_role_grants" "GRANT_ROL_HR_ADMIN" {
  role_name = "ACCOUNTADMIN"

  users = [snowflake_user.USR_HR_MIKE.name,]
}

# Role VIEWER
resource "snowflake_role" "ROL_HR_VIEWER" {
  name    = "VIEWER"
  comment = "Role VIEWER"
}

# Grant role VIEWER to Qlik
resource "snowflake_role_grants" "GRANT_ROL_HR_VIEWER" {
  role_name = snowflake_role.ROL_HR_VIEWER.name

  users = [snowflake_user.USR_HR_QLIK.name,]
}
