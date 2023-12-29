terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "0.80.0"
    }
  }
}

provider "snowflake" {
  user     = var.username
  account  = var.account
  password = var.password
  role     = var.role
}
