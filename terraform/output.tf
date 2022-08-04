output "kube_config" {
  value = digitalocean_kubernetes_cluster.k8s_news.endpoint
}