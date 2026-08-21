resource "kubernetes_ingress_v1" "grafana_ingress" {
  metadata {
    name      = "grafana-ingress"
    namespace = "monitoring"
    annotations = {
      "kubernetes.io/ingress.class"            = "alb"
      "alb.ingress.kubernetes.io/scheme"       = "internet-facing"
      "alb.ingress.kubernetes.io/target-type"  = "ip"
      "alb.ingress.kubernetes.io/listen-ports" = "[{\"HTTP\": 80}]"
    }
  }

  spec {
    rule {
      http {
        path {
          path      = "/"
          path_type = "Prefix"
          backend {
            service {
              name = "prometheus-stack-grafana"
              port {
                number = 80
              }
            }
          }
        }
      }
    }
  }
}
