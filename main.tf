terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "1.24.2"
    }
  }

  backend "remote" {
    organization = "TPMM-Org"

    workspaces {
      name = "vSphere-ParentFolder-TampaVMUG"
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

resource "vsphere_folder" "parent" {
  path          = var.parent_folder
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_folder" "web" {
  path          = "${vsphere_folder.parent.path}/Web"
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
}
