resource "aws_service_discovery_service" "publisher" {
  name = var.service_name

  dns_config {
    namespace_id = var.govuk_publishing_platform_namespace_id

    dns_records {
      ttl  = 10
      type = "A"
    }

    routing_policy = "WEIGHTED"
  }
}
