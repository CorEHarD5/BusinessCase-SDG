# Schema MALE
resource "snowflake_schema" "SC_HR_PRO_M" {
  name     = "SC_HR_PRO_M"
  database = snowflake_database.BD_HR_PRO.name
}

# Schema FEMALE
resource "snowflake_schema" "SC_HR_PRO_F" {
  name     = "SC_HR_PRO_F"
  database = snowflake_database.BD_HR_PRO.name
}


# Table HEROES M
resource "snowflake_table" "TB_HR_PRO_HEROES_M" {
  name = "TB_HR_PRO_HEROES_M"

  database = snowflake_database.BD_HR_PRO.name
  schema   = snowflake_schema.SC_HR_PRO_M.name

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
resource "snowflake_table" "TB_HR_PRO_HEROES_F" {
  name = "TB_HR_PRO_HEROES_F"

  database = snowflake_database.BD_HR_PRO.name
  schema   = snowflake_schema.SC_HR_PRO_F.name

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
