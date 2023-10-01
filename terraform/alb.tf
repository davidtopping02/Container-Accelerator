provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["eks", "get-token", "--cluster-name", var.name]
    command     = "aws"
  }
}

resource "kubernetes_service_v1" "example" {
  metadata {
    name = "example"
  }
  spec {
    port {
      port        = 8080
      target_port = 80
    }
    type = "LoadBalancer"
  }
}

output "load_balancer_hostname" {
  value = kubernetes_service_v1.example.status.0.load_balancer.0.ingress.0.hostname
}

