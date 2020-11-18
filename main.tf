terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "1.24.2"
    }
  }
}

module "folderstructure" {
  source  = "app.terraform.io/TPMM-Org/folderstructure/vsphere"
  version = "0.0.1"

  parent_folder = var.folderstructure_parent_folder
}

