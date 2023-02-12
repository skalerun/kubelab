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

variable "clusters" {
  type        = list(any)
  description = "GCP machine tags"
  default     = ["jbenabra", "amastour", "cejjebbouji", "ambeker", "oguedhi", "bbahou", "olatrach", "bbouzid", "sajili", "ioumassate"]
}

variable "users" {
  type        = list(map(string))
  description = "list of public ssh keys that have access to the VM"
  default = [
    {
      user      = "jihadbenabra"
      publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD7BEDZKvzFKbtAAQuty9WwD6VWcoMwoWO56w6C2UlYQxgQ3l1JK2XJMiUn/qqv4Iikca4TaRfxguFaBol3pgiXogsOjCGjQrpRM9LBSN1P8gYKbcRKBKHCsqnRKbUrAHJdrRYNSmdXGKIRHsXu5QS0VR0NixckLcmIHUf7AMw7cuRgOWT7O4+dVdvwclidTQVlDJxBkJ+dugsdyWyanMrDf/Ghw+BBWjnk+Vop3ucVmw8PuAOu3qn4PO7cqLQebLnkvy8z8leTl7HIoRDGyaDUIuThVOSEDQIop+uhr7oo4kV35eO3TUStV8/gPJFqwN8R+p9J6j+bLgtXrXMpjt8TXoSAnkUu6fyw2ebSmQO4piklR2NzHQ/H43CDg5ZvKzJEP/kExpvetqYeYQ0aFZjNuixPy1Sgc0IgNvWQOQ6Q2ytcvVgjKwrvOQWw82liLbbwkt77jvkP/MeSOec+Mgo7asy5E4V9qtjej02Qrzl2BSEOqzUdXyWyregsBov3rb8= jihadbenabra@cs-201626074710-default"
    },
    {
      user      = "amastour"
      publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD7BEDZKvzFKbtAAQuty9WwD6VWcoMwoWO56w6C2UlYQxgQ3l1JK2XJMiUn/qqv4Iikca4TaRfxguFaBol3pgiXogsOjCGjQrpRM9LBSN1P8gYKbcRKBKHCsqnRKbUrAHJdrRYNSmdXGKIRHsXu5QS0VR0NixckLcmIHUf7AMw7cuRgOWT7O4+dVdvwclidTQVlDJxBkJ+dugsdyWyanMrDf/Ghw+BBWjnk+Vop3ucVmw8PuAOu3qn4PO7cqLQebLnkvy8z8leTl7HIoRDGyaDUIuThVOSEDQIop+uhr7oo4kV35eO3TUStV8/gPJFqwN8R+p9J6j+bLgtXrXMpjt8TXoSAnkUu6fyw2ebSmQO4piklR2NzHQ/H43CDg5ZvKzJEP/kExpvetqYeYQ0aFZjNuixPy1Sgc0IgNvWQOQ6Q2ytcvVgjKwrvOQWw82liLbbwkt77jvkP/MeSOec+Mgo7asy5E4V9qtjej02Qrzl2BSEOqzUdXyWyregsBov3rb8= jihadbenabra@cs-201626074710-default"
    },
    {
      user      = "cejjebbouji"
      publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD7BEDZKvzFKbtAAQuty9WwD6VWcoMwoWO56w6C2UlYQxgQ3l1JK2XJMiUn/qqv4Iikca4TaRfxguFaBol3pgiXogsOjCGjQrpRM9LBSN1P8gYKbcRKBKHCsqnRKbUrAHJdrRYNSmdXGKIRHsXu5QS0VR0NixckLcmIHUf7AMw7cuRgOWT7O4+dVdvwclidTQVlDJxBkJ+dugsdyWyanMrDf/Ghw+BBWjnk+Vop3ucVmw8PuAOu3qn4PO7cqLQebLnkvy8z8leTl7HIoRDGyaDUIuThVOSEDQIop+uhr7oo4kV35eO3TUStV8/gPJFqwN8R+p9J6j+bLgtXrXMpjt8TXoSAnkUu6fyw2ebSmQO4piklR2NzHQ/H43CDg5ZvKzJEP/kExpvetqYeYQ0aFZjNuixPy1Sgc0IgNvWQOQ6Q2ytcvVgjKwrvOQWw82liLbbwkt77jvkP/MeSOec+Mgo7asy5E4V9qtjej02Qrzl2BSEOqzUdXyWyregsBov3rb8= jihadbenabra@cs-201626074710-default"
    },
    {
      user      = "ambeker"
      publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD7BEDZKvzFKbtAAQuty9WwD6VWcoMwoWO56w6C2UlYQxgQ3l1JK2XJMiUn/qqv4Iikca4TaRfxguFaBol3pgiXogsOjCGjQrpRM9LBSN1P8gYKbcRKBKHCsqnRKbUrAHJdrRYNSmdXGKIRHsXu5QS0VR0NixckLcmIHUf7AMw7cuRgOWT7O4+dVdvwclidTQVlDJxBkJ+dugsdyWyanMrDf/Ghw+BBWjnk+Vop3ucVmw8PuAOu3qn4PO7cqLQebLnkvy8z8leTl7HIoRDGyaDUIuThVOSEDQIop+uhr7oo4kV35eO3TUStV8/gPJFqwN8R+p9J6j+bLgtXrXMpjt8TXoSAnkUu6fyw2ebSmQO4piklR2NzHQ/H43CDg5ZvKzJEP/kExpvetqYeYQ0aFZjNuixPy1Sgc0IgNvWQOQ6Q2ytcvVgjKwrvOQWw82liLbbwkt77jvkP/MeSOec+Mgo7asy5E4V9qtjej02Qrzl2BSEOqzUdXyWyregsBov3rb8= jihadbenabra@cs-201626074710-default"
    },
    {
      user      = "oguedhi"
      publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD7BEDZKvzFKbtAAQuty9WwD6VWcoMwoWO56w6C2UlYQxgQ3l1JK2XJMiUn/qqv4Iikca4TaRfxguFaBol3pgiXogsOjCGjQrpRM9LBSN1P8gYKbcRKBKHCsqnRKbUrAHJdrRYNSmdXGKIRHsXu5QS0VR0NixckLcmIHUf7AMw7cuRgOWT7O4+dVdvwclidTQVlDJxBkJ+dugsdyWyanMrDf/Ghw+BBWjnk+Vop3ucVmw8PuAOu3qn4PO7cqLQebLnkvy8z8leTl7HIoRDGyaDUIuThVOSEDQIop+uhr7oo4kV35eO3TUStV8/gPJFqwN8R+p9J6j+bLgtXrXMpjt8TXoSAnkUu6fyw2ebSmQO4piklR2NzHQ/H43CDg5ZvKzJEP/kExpvetqYeYQ0aFZjNuixPy1Sgc0IgNvWQOQ6Q2ytcvVgjKwrvOQWw82liLbbwkt77jvkP/MeSOec+Mgo7asy5E4V9qtjej02Qrzl2BSEOqzUdXyWyregsBov3rb8= jihadbenabra@cs-201626074710-default"
    },
    {
      user      = "bbahou"
      publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD7BEDZKvzFKbtAAQuty9WwD6VWcoMwoWO56w6C2UlYQxgQ3l1JK2XJMiUn/qqv4Iikca4TaRfxguFaBol3pgiXogsOjCGjQrpRM9LBSN1P8gYKbcRKBKHCsqnRKbUrAHJdrRYNSmdXGKIRHsXu5QS0VR0NixckLcmIHUf7AMw7cuRgOWT7O4+dVdvwclidTQVlDJxBkJ+dugsdyWyanMrDf/Ghw+BBWjnk+Vop3ucVmw8PuAOu3qn4PO7cqLQebLnkvy8z8leTl7HIoRDGyaDUIuThVOSEDQIop+uhr7oo4kV35eO3TUStV8/gPJFqwN8R+p9J6j+bLgtXrXMpjt8TXoSAnkUu6fyw2ebSmQO4piklR2NzHQ/H43CDg5ZvKzJEP/kExpvetqYeYQ0aFZjNuixPy1Sgc0IgNvWQOQ6Q2ytcvVgjKwrvOQWw82liLbbwkt77jvkP/MeSOec+Mgo7asy5E4V9qtjej02Qrzl2BSEOqzUdXyWyregsBov3rb8= jihadbenabra@cs-201626074710-default"
    },
    {
      user      = "olatrach"
      publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD7BEDZKvzFKbtAAQuty9WwD6VWcoMwoWO56w6C2UlYQxgQ3l1JK2XJMiUn/qqv4Iikca4TaRfxguFaBol3pgiXogsOjCGjQrpRM9LBSN1P8gYKbcRKBKHCsqnRKbUrAHJdrRYNSmdXGKIRHsXu5QS0VR0NixckLcmIHUf7AMw7cuRgOWT7O4+dVdvwclidTQVlDJxBkJ+dugsdyWyanMrDf/Ghw+BBWjnk+Vop3ucVmw8PuAOu3qn4PO7cqLQebLnkvy8z8leTl7HIoRDGyaDUIuThVOSEDQIop+uhr7oo4kV35eO3TUStV8/gPJFqwN8R+p9J6j+bLgtXrXMpjt8TXoSAnkUu6fyw2ebSmQO4piklR2NzHQ/H43CDg5ZvKzJEP/kExpvetqYeYQ0aFZjNuixPy1Sgc0IgNvWQOQ6Q2ytcvVgjKwrvOQWw82liLbbwkt77jvkP/MeSOec+Mgo7asy5E4V9qtjej02Qrzl2BSEOqzUdXyWyregsBov3rb8= jihadbenabra@cs-201626074710-default"
    },
    {
      user      = "bbouzid"
      publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD7BEDZKvzFKbtAAQuty9WwD6VWcoMwoWO56w6C2UlYQxgQ3l1JK2XJMiUn/qqv4Iikca4TaRfxguFaBol3pgiXogsOjCGjQrpRM9LBSN1P8gYKbcRKBKHCsqnRKbUrAHJdrRYNSmdXGKIRHsXu5QS0VR0NixckLcmIHUf7AMw7cuRgOWT7O4+dVdvwclidTQVlDJxBkJ+dugsdyWyanMrDf/Ghw+BBWjnk+Vop3ucVmw8PuAOu3qn4PO7cqLQebLnkvy8z8leTl7HIoRDGyaDUIuThVOSEDQIop+uhr7oo4kV35eO3TUStV8/gPJFqwN8R+p9J6j+bLgtXrXMpjt8TXoSAnkUu6fyw2ebSmQO4piklR2NzHQ/H43CDg5ZvKzJEP/kExpvetqYeYQ0aFZjNuixPy1Sgc0IgNvWQOQ6Q2ytcvVgjKwrvOQWw82liLbbwkt77jvkP/MeSOec+Mgo7asy5E4V9qtjej02Qrzl2BSEOqzUdXyWyregsBov3rb8= jihadbenabra@cs-201626074710-default"
    },
    {
      user      = "sajili"
      publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD7BEDZKvzFKbtAAQuty9WwD6VWcoMwoWO56w6C2UlYQxgQ3l1JK2XJMiUn/qqv4Iikca4TaRfxguFaBol3pgiXogsOjCGjQrpRM9LBSN1P8gYKbcRKBKHCsqnRKbUrAHJdrRYNSmdXGKIRHsXu5QS0VR0NixckLcmIHUf7AMw7cuRgOWT7O4+dVdvwclidTQVlDJxBkJ+dugsdyWyanMrDf/Ghw+BBWjnk+Vop3ucVmw8PuAOu3qn4PO7cqLQebLnkvy8z8leTl7HIoRDGyaDUIuThVOSEDQIop+uhr7oo4kV35eO3TUStV8/gPJFqwN8R+p9J6j+bLgtXrXMpjt8TXoSAnkUu6fyw2ebSmQO4piklR2NzHQ/H43CDg5ZvKzJEP/kExpvetqYeYQ0aFZjNuixPy1Sgc0IgNvWQOQ6Q2ytcvVgjKwrvOQWw82liLbbwkt77jvkP/MeSOec+Mgo7asy5E4V9qtjej02Qrzl2BSEOqzUdXyWyregsBov3rb8= jihadbenabra@cs-201626074710-default"
    },
    {
      user      = "ioumassate"
      publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD7BEDZKvzFKbtAAQuty9WwD6VWcoMwoWO56w6C2UlYQxgQ3l1JK2XJMiUn/qqv4Iikca4TaRfxguFaBol3pgiXogsOjCGjQrpRM9LBSN1P8gYKbcRKBKHCsqnRKbUrAHJdrRYNSmdXGKIRHsXu5QS0VR0NixckLcmIHUf7AMw7cuRgOWT7O4+dVdvwclidTQVlDJxBkJ+dugsdyWyanMrDf/Ghw+BBWjnk+Vop3ucVmw8PuAOu3qn4PO7cqLQebLnkvy8z8leTl7HIoRDGyaDUIuThVOSEDQIop+uhr7oo4kV35eO3TUStV8/gPJFqwN8R+p9J6j+bLgtXrXMpjt8TXoSAnkUu6fyw2ebSmQO4piklR2NzHQ/H43CDg5ZvKzJEP/kExpvetqYeYQ0aFZjNuixPy1Sgc0IgNvWQOQ6Q2ytcvVgjKwrvOQWw82liLbbwkt77jvkP/MeSOec+Mgo7asy5E4V9qtjej02Qrzl2BSEOqzUdXyWyregsBov3rb8= jihadbenabra@cs-201626074710-default"
    }
  ]
}