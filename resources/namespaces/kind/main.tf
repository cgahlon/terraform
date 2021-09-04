provider "kubernetes" {
  alias = "kind-kind"
  config_context = "kind-kind"
  config_path = "~/.kube/config"
}

locals {
  namespaces = [
    "pihole",
    "ubnt",
    "nginx",
    "frontent",
    "restapi",
    "istio"
  ]
  labels = {
    istio-injection = "disabled"
  }
}

module "k8s-namespace" {
  providers = {
    kubernetes = kubernetes.kind-kind
  }
  source = "../../../modules/k8s-namespace/"
  control_plane_name = "kind-kind"
  labels = local.labels
  name_spaces = local.namespaces
}
