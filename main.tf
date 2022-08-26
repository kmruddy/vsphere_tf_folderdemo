terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.2.0"
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
  path          = "Production"
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
}
