resource "astra_database" "db-workshops" {
  name                 = "workshops"
  keyspace             = "terraform"
  cloud_provider       = "gcp"
  regions              = ["us-east1"]
  deletion_protection  = false
}