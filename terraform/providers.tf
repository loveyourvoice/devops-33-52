terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=0.13"
}

provider "yandex" {
  token     = "y0_AgAAAAAfi-HGAATuwQAAAAEJYlUlAAA2pEqbHMJN4qZ4MZkuh0xI7QlLHA"
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.default_zone
}