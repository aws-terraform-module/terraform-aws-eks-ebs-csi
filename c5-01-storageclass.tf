resource "kubernetes_storage_class" "ebs_storageclass" {
  count = var.create_ebs_storage_class ? 1 : 0  # Conditionally create the resource

  metadata {
    name = "ebs-gp3-sc"
  }

  storage_provisioner = "ebs.csi.aws.com"

  parameters = {
    type       = "gp3"
    encrypted  = "true"
    iops       = "3000"
    throughput = "125"
  }

  reclaim_policy = var.ebs_reclaim_policy  # Reclaim policy (Delete or Retain)
  volume_binding_mode = "WaitForFirstConsumer"
}