# View: Male Marvel Heroes with Blue Eyes
resource "snowflake_view" "VW_HR_PRO_M_EYES" {
  database = snowflake_database.BD_HR_PRO.name
  schema   = snowflake_schema.SC_HR_PRO_M.name
  name     = "view_marvel_blue_eyes_male"

  comment = "Male Marvel heroes with blue eyes"

  statement  = <<-SQL
    SELECT "Name", "Identity", "Publisher", "EyeColor"
FROM BD_HR_PRO.SC_HR_PRO_M.TB_HR_PRO_HEROES_M
WHERE "Publisher" = 'Marvel Comics' AND "EyeColor" = 'Blue';
SQL
  or_replace = true
}

# View: Female Marvel Heroes with Blue Eyes
resource "snowflake_view" "VW_HR_PRO_F_EYES" {
depends_on = [ snowflake_database.BD_HR_PRO, snowflake_schema.SC_HR_PRO_F, snowflake_table.TB_HR_PRO_HEROES_F]
  database = snowflake_database.BD_HR_PRO.name
  schema   = snowflake_schema.SC_HR_PRO_F.name
  name     = "view_marvel_blue_eyes_female"

  comment = "Female Marvel heroes with blue eyes"

  statement  = <<-SQL
    SELECT "Name", "Identity", "Publisher", "EyeColor"
FROM BD_HR_PRO.SC_HR_PRO_F.TB_HR_PRO_HEROES_F
WHERE "Publisher" = 'Marvel Comics' AND "EyeColor" = 'Blue';
SQL
  or_replace = true
}

# View: All of male DC Heroes
resource "snowflake_view" "VW_HR_PRO_M_DC" {
  database = snowflake_database.BD_HR_PRO.name
  schema   = snowflake_schema.SC_HR_PRO_M.name
  name     = "view_male_dc"

  comment = "All of male DC heroes"

  statement  = <<-SQL
    SELECT *
FROM BD_HR_PRO.SC_HR_PRO_M.TB_HR_PRO_HEROES_M
WHERE "Publisher" = 'DC Comics';
SQL
  or_replace = true
}

# View: All of female DC Heroes
resource "snowflake_view" "VW_HR_PRO_F_DC" {
depends_on = [ snowflake_database.BD_HR_PRO, snowflake_schema.SC_HR_PRO_F, snowflake_table.TB_HR_PRO_HEROES_F]
  database = snowflake_database.BD_HR_PRO.name
  schema   = snowflake_schema.SC_HR_PRO_F.name
  name     = "view_female_dc"

  comment = "all of female DC heroes"

  statement  = <<-SQL
    SELECT *
FROM BD_HR_PRO.SC_HR_PRO_F.TB_HR_PRO_HEROES_F
WHERE "Publisher" = 'DC Comics';
SQL
  or_replace = true
}

# View: Black hair male heroes
resource "snowflake_view" "VW_HR_PRO_M_HAIR" {
  database = snowflake_database.BD_HR_PRO.name
  schema   = snowflake_schema.SC_HR_PRO_M.name
  name     = "view_black_male_hair"

  comment = "Black hair male heroes"

  statement  = <<-SQL
    SELECT "Name", "Identity"
FROM BD_HR_PRO.SC_HR_PRO_M.TB_HR_PRO_HEROES_M
WHERE "HairColor" = 'Black';
SQL
  or_replace = true
}

# View: Black hair female heroes
resource "snowflake_view" "VW_HR_PRO_F_HAIR" {
depends_on = [ snowflake_database.BD_HR_PRO, snowflake_schema.SC_HR_PRO_F, snowflake_table.TB_HR_PRO_HEROES_F]
  database = snowflake_database.BD_HR_PRO.name
  schema   = snowflake_schema.SC_HR_PRO_F.name
  name     = "view_black_female_hair"

  comment = "Black hair male heroes"

  statement  = <<-SQL
    SELECT "Name", "Identity"
FROM BD_HR_PRO.SC_HR_PRO_F.TB_HR_PRO_HEROES_F
WHERE "HairColor" = 'Black';
SQL
  or_replace = true
}
