terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.2.0"
    }
  }

  cloud {
    organization = "TPMM-Org"
    workspaces {
      tags = ["demo", "conference:Explore", "service:vsphere"]
    }
  }
}

provider "vsphere" {
  user                 = var.username
  password             = var.password
  vsphere_server       = var.vcenter
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {
  name = var.dc
}

module "vsphere_folderstructure" {
  source = "./modules/vsphere_folderstructure"

  dc          = data.vsphere_datacenter.dc.id
  parent_name = var.parent_folder
}
