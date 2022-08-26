resource "vsphere_folder" "parent" {
  path          = var.parent_name
  type          = "vm"
  datacenter_id = var.dc
}

resource "vsphere_folder" "web" {
  path          = "${vsphere_folder.parent.path}/Web"
  type          = "vm"
  datacenter_id = var.dc
}

resource "vsphere_folder" "db" {
  path          = "${vsphere_folder.parent.path}/Databases"
  type          = "vm"
  datacenter_id = var.dc
}

resource "vsphere_folder" "file_svr" {
  path          = "${vsphere_folder.parent.path}/File Servers"
  type          = "vm"
  datacenter_id = var.dc
}

resource "vsphere_folder" "mgmt" {
  path          = "${vsphere_folder.parent.path}/Management"
  type          = "vm"
  datacenter_id = var.dc
}

resource "vsphere_folder" "mgmt_win" {
  path          = "${vsphere_folder.mgmt.path}/Windows"
  type          = "vm"
  datacenter_id = var.dc
}

resource "vsphere_folder" "mgmt_linux" {
  path          = "${vsphere_folder.mgmt.path}/Linux"
  type          = "vm"
  datacenter_id = var.dc
}

resource "vsphere_folder" "mgmt_vmw" {
  path          = "${vsphere_folder.mgmt.path}/VMware"
  type          = "vm"
  datacenter_id = var.dc
}
