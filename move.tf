moved {
  from = vsphere_folder.db
  to   = module.vsphere_folderstructure.vsphere_folder.db
}

moved {
  from = vsphere_folder.file_svr
  to   = module.vsphere_folderstructure.vsphere_folder.file_svr
}

moved {
  from = vsphere_folder.mgmt
  to   = module.vsphere_folderstructure.vsphere_folder.mgmt
}

moved {
  from = vsphere_folder.mgmt_linux
  to   = module.vsphere_folderstructure.vsphere_folder.mgmt_linux
}

moved {
  from = vsphere_folder.mgmt_vmw
  to   = module.vsphere_folderstructure.vsphere_folder.mgmt_vmw
}

moved {
  from = vsphere_folder.mgmt_win
  to   = module.vsphere_folderstructure.vsphere_folder.mgmt_win
}

moved {
  from = vsphere_folder.parent
  to   = module.vsphere_folderstructure.vsphere_folder.parent
}

moved {
  from = vsphere_folder.web
  to   = module.vsphere_folderstructure.vsphere_folder.web
}
