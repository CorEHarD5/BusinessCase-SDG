# User Mike
resource "snowflake_user" "USR_HR_MIKE" {
  name         = "mike"
  comment      = "user mike"
  disabled     = false
  display_name = "Mike"
  email        = "mike@heroes.com"
  first_name   = "mike"
  password     = "secret"

  default_role = "ACCOUNTADMIN"

  must_change_password = true
}

# User Jhonny
resource "snowflake_user" "USR_HR_JHONNY" {
  name         = "jhonny"
  comment      = "user jhonny"
  disabled     = false
  display_name = "Jhonny"
  email        = "jhonny@heroes.com"
  first_name   = "jhonny"
  password     = "secret"

  default_role = "DA"

  must_change_password = true
}

# User Sarah
resource "snowflake_user" "USR_HR_SARAH" {
  name         = "sarah"
  comment      = "user sarah"
  disabled     = false
  display_name = "Sarah"
  email        = "sarah@heroes.com"
  first_name   = "sarah"
  password     = "secret"

  default_role = "DEV"

  must_change_password = true
}

# User Qlik view
resource "snowflake_user" "USR_HR_QLIK" {
  name         = "qlik"
  comment      = "qlik view user"
  disabled     = false
  display_name = "Qlik"
  email        = "view@qlik.com"
  first_name   = "view"
  password     = "secret"

  default_role = "VIEWER"

  must_change_password = true
}
