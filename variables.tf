variable "project" {
  type        = string
  description = "GCP project name"
  default     = "sofrecom-kube"
}

variable "region" {
  type        = string
  description = "GCP zone"
  default     = "us-west2"
}

variable "zone" {
  type        = string
  description = "GCP zone"
  default     = "us-west2-b"
}

variable "os" {
  type        = string
  description = "SKU for RHEL 8"
  default     = "debian-cloud/debian-11"
}

variable "machine_type" {
  type        = string
  description = "GCP machine type"
  default     = "n1-standard-2"
}

variable "tags" {
  type        = list(any)
  description = "GCP machine tags"
  default     = ["ssh", "http"]
}

variable "clusters" {
  type        = list(any)
  description = "GCP machine tags"
  default     = ["jbenabra", "amastour", "cejjebbouji", "ambeker", "oguedhi", "bbahou", "olatrach", "bbouzid", "sajili", "ioumassate"]
}

variable "ip_cidr_range" {
  type        = string
  description = "GCP kube pod cidr"
  default     = "10.0.0.0/22"
}

variable "secondary_ip" {
  type        = string
  description = "GCP kube service cidr"
  default     = "172.16.0.0/24"
}