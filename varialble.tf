variable "app_name" {
  type    = string
  default = "zon-coffee-web"
}

variable "image_url" {
  type    = string
  default = "ksithvothy/zon-coffee-web:latest"
}

variable "external_port" {
  type    = number
  default = 8000
}

variable "internal_port" {
  type    = number
  default = 8000
}
