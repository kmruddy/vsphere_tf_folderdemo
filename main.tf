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
  user                 = "svc_tf@prob.local"
  password             = "Terraform!23"
  vsphere_server       = "probvcsa01.prob.local"
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {}

resource "vsphere_folder" "parent" {
  path          = "TampaVMUG"
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_folder" "web" {
  path          = "${vsphere_folder.parent.path}/Web"
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
}
