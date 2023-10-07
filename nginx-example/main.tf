provider "kubernetes" {
  # Assuming you're using a kubeconfig file for authentication. Adjust accordingly.
  config_path = "~/.kube/config"
}

resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "nginx"
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        App = "nginx"
      }
    }

    template {
      metadata {
        labels = {
          App = "nginx"
        }
      }

      spec {
        container {
          image = "nginx:latest"
          name  = "nginx"
        }
      }
    }
  }
}

resource "kubernetes_service" "nginx" {
  metadata {
    name = "nginx"
  }

  spec {
    selector = {
      App = "nginx"
    }

    port {
      port        = 80
      target_port = 80
    }

    type = "LoadBalancer"
  }
}

output "nginx_service" {
  value = kubernetes_service.nginx.status.0.load_balancer.0.ingress.0.ip
}
