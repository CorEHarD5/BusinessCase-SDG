# Schema MALE
resource "snowflake_schema" "SC_HR_DEV_M" {
  name     = "SC_HR_DEV_M"
  database = snowflake_database.BD_HR_DEV.name
}

# Schema FEMALE
resource "snowflake_schema" "SC_HR_DEV_F" {
  name     = "SC_HR_DEV_F"
  database = snowflake_database.BD_HR_DEV.name
}


# Table HEROES M
resource "snowflake_table" "TB_HR_DEV_HEROES_M" {
  name = "TB_HR_DEV_HEROES_M"

  database = snowflake_database.BD_HR_DEV.name
  schema   = snowflake_schema.SC_HR_DEV_M.name

  column {
    name = "Name"
    type = "varchar"
  }

  column {
    name = "Identity"
    type = "varchar"
  }

  column {
    name = "Publisher"
    type = "varchar"
  }

  column {
    name = "Gender"
    type = "varchar"
  }

  column {
    name = "FirstAppearance"
    type = "number"
  }

  column {
    name = "EyeColor"
    type = "varchar"
  }

  column {
    name = "HairColor"
    type = "varchar"
  }

  column {
    name = "Strength"
    type = "number"
  }

  column {
    name = "Intelligence"
    type = "varchar"
  }
}

# Table HEROES F
resource "snowflake_table" "TB_HR_DEV_HEROES_F" {
  name = "TB_HR_DEV_HEROES_F"

  database = snowflake_database.BD_HR_DEV.name
  schema   = snowflake_schema.SC_HR_DEV_F.name

  column {
    name = "Name"
    type = "varchar"
  }

  column {
    name = "Identity"
    type = "varchar"
  }

  column {
    name = "Publisher"
    type = "varchar"
  }

  column {
    name = "Gender"
    type = "varchar"
  }

  column {
    name = "FirstAppearance"
    type = "number"
  }

  column {
    name = "EyeColor"
    type = "varchar"
  }

  column {
    name = "HairColor"
    type = "varchar"
  }

  column {
    name = "Strength"
    type = "number"
  }

  column {
    name = "Intelligence"
    type = "varchar"
  }
}
