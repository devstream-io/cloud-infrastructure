variable "dtm_domain" {
  type    = string
  default = "dtm.dev"
}

variable "github_pages_domain" {
  type    = string
  default = "devstream-io.github.io"
}

variable "readthedocs_domain" {
  type    = string
  default = "devstream.readthedocs.io"
}

variable "github_pages_ip_set" {
  type = list(string)
  default = [
    "185.199.108.153",
    "185.199.109.153",
    "185.199.110.153",
    "185.199.111.153"
  ]
}
