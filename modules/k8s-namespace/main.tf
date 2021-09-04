# k8s namespace module
# Christopher Gahlon <cgahlon@gmail.com>


resource "kubernetes_namespace" "k8s-namespaces" {
  for_each = toset(var.name_spaces)
    metadata {
      annotations = var.name_space_annotations
      labels      = merge({"name" = each.key}, var.labels)
      name        = each.key
    }
}
