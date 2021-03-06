variable "appmesh_mesh_govuk_id" {
  type    = string
  default = "govuk"
}

variable "service_name" {
  description = "Service name of the Fargate service, cluster, task etc."
  type        = string
  default     = "publisher"
}

variable "govuk_publishing_platform_namespace_id" {
  type = string
}

variable "govuk_publishing_platform_namespace_name" {
  type = string
}

variable "private_subnets" {
  description = "The subnet ids for govuk_private_a, govuk_private_b, and govuk_private_c"
  type        = list
  default     = ["subnet-6dc4370b", "subnet-463bfd0e", "subnet-bfecd0e4"]
}

variable "public_subnets" {
  description = "The subnet ids for govuk_public_a, govuk_public_b, and govuk_public_c"
  type        = list
  default     = ["subnet-6cc4370a", "subnet-ba30f6f2", "subnet-bfe6dae4"]
}

variable "govuk_management_access_security_group" {
  description = "Group used to allow access by management systems"
  type        = string
  default     = "sg-0b873470482f6232d"
}

variable "container_ingress_port" {
  description = "The port which the container will accept connections on"
  type        = number
  default     = 3000
}

variable "desired_count" {
  description = "The desired number of container instances"
  type        = number
  default     = 1
}

variable "publishing_api_ingress_security_group" {
  type = string
}

variable "redis_security_group_id" {
  description = "The redis security group id"
  type        = string
  default     = "sg-0a8a92451bfde8aa3"
}

variable "documentdb_security_group_id" {
  description = "The documentdb security group id"
  type        = string
  default     = "sg-08a20d332cbc59c3c"
}

variable "internal_domain_name" {
  description = "The internal root root domain name"
  type        = string
  default     = "test.govuk-internal.digital"
}

variable "public_domain_name" {
  description = "The internal root root domain name"
  type        = string
  default     = "test.govuk.digital"
}
