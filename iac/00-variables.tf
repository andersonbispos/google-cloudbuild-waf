variable "project" {
  default = "labs-terraform-8476"
}

variable "region" {
  default = "southamerica-east1"
}

variable "zone" {
  default = "southamerica-east1-c"
}

variable "vpc_name" {
  default = "cloud-armor-lab"
}

variable "subnet_name" {
  default = "cloud-armor-lab"
}

variable "subnet_range" {
  default = "10.0.0.0/24"
}

variable "default_node_size" {
  default     = "e2-medium" // 2vCPU | 4GB RAM
  type        = string
  description = "Tamanho mínimo pra estar aderente a ata"
}