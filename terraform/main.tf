resource "digitalocean_kubernetes_cluster" "k8s_news" {
  name   = var.cluster_name
  region = var.region
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.22.8-do.1"

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    node_count = 3

  }
}

resource "local_file" "kube_config" {
    content  = digitalocean_kubernetes_cluster.k8s_news.kube_config.0.raw_config
    filename = "/home/$USER/.kube/config-do"
}