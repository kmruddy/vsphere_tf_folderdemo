terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "1.24.2"
    }
  }
}

provider "vsphere" {
  user                 = var.username
  password             = var.password
  vsphere_server       = var.vcenter
  allow_unverified_ssl = true
}

module "folderstructure" {
  source  = "app.terraform.io/TPMM-Org/folderstructure/vsphere"
  version = "0.0.2"

  parent_folder = var.folderstructure_parent_folder
}

