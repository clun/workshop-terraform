terraform {
  required_providers {
    astra = {
      source = "datastax/astra"
      version = "2.1.15"
    }
  }
}

provider "astra" {
  token = "<change_me>"
}