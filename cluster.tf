resource "random_string" "password" {
  length  = 16
  special = true
  number  = true
  lower   = true
  upper   = true
}


module "cuba_on_kubernetes_cluster" {
  source = "google-terraform-modules/kubernetes-engine/google"
  version = "1.15.0"

  general = {
    name = "cuba-on-kube"
    env  = "prod"
    zone = "europe-west1-b"
  }

  master = {
    username = "admin"
    password = "${random_string.password.result}"
  }

  default_node_pool = {
    node_count = 3
    remove     = false
  }

}
