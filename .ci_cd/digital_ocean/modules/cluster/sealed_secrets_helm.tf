resource "helm_release" "sealed_secrets" {
  name             = "sealed-secrets"
  chart            = "sealed-secrets/sealed-secrets"
  version          = "2.9.0"
  namespace        = "frontend"
  create_namespace = "true"

  set {
    name  = "ingress.enabled"
    value = "false"
  }
}
