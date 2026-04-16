# ── Block Storage fauzi-app ───────────────────────────────
resource "idcloudhost_vm_disks" "storage_app" {
  size    = 20
  vm_uuid = idcloudhost_vm.fauzi_app.uuid

  depends_on = [idcloudhost_vm.fauzi_app]
}

# ── Block Storage fauzi-gateway ───────────────────────────
resource "idcloudhost_vm_disks" "storage_gateway" {
  size    = 20
  vm_uuid = idcloudhost_vm.fauzi_gateway.uuid

  depends_on = [idcloudhost_vm.fauzi_gateway]
}
